<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;
/**
 * @OA\Info(
 *     title="User API",
 *     version="1.0.0",
 *     description="API a felhasználók kezeléséhez."
 * )
 *
 * @OA\Server(
 *     url="http://127.0.0.1:8000/api",
 *     description="Fejlesztői szerver"
 * )
 */
class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
     /**
     * @OA\Get(
     *     path="/tasks",
     *     summary="Visszaadja az összes taskot",
     *     @OA\Response(
     *         response=200,
     *         description="Sikeres válasz",
     *         @OA\JsonContent(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/Task")
     *         )
     *     )
     * )
     */
    public function index()
    {
        $tasks = Task::all();
        return response()->json($tasks);
    }

    /**
     * Store a newly created resource in storage.
     */
    /**
     * @OA\Post(
     *     path="/tasks",
     *     summary="Új task létrehozása",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/Task")
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="Task létrehozva",
     *         @OA\JsonContent(ref="#/components/schemas/Task")
     *     )
     * )
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'completed' => 'boolean',
        ]);
        
        $task = Task::create($validatedData);

        return response()->json($task, 201);
    }

    /**
     * Display the specified resource.
     */
    /**
     * @OA\Get(
     *     path="/tasks/{id}",
     *     summary="Visszaad egy adott taskot",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="A task azonosítója",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Sikeres válasz",
     *         @OA\JsonContent(ref="#/components/schemas/Task")
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Felhasználó nem található"
     *     )
     * )
     */
    public function show(string $id)
    {
        $task = Task::findOrFail($id);
        return response()->json($task);
    }

    /**
     * Update the specified resource in storage.
     */
    /**
     * @OA\Put(
     *     path="/tasks/{id}",
     *     summary="Frissít egy adott taskot",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="A task azonosítója",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/Task")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Felhasználó frissítve",
     *         @OA\JsonContent(ref="#/components/schemas/Task")
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Felhasználó nem található"
     *     )
     * )
     */
    public function update(Request $request, string $id)
    {
        $task = Task::findOrFail($id);
        $task->update($request->all());
        return response()->json($task);
    }

    /**
     * Remove the specified resource from storage.
     */
    /**
     * @OA\Delete(
     *     path="/tasks/{id}",
     *     summary="Töröl egy adott taskot",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="A felhasználó azonosítója",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=204,
     *         description="Felhasználó törölve"
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Felhasználó nem található"
     *     )
     * )
     */
    public function destroy(string $id)
    {
        $task = Task::findOrFail($id);
        $task->delete();
        return response()->noContent();
    }
}