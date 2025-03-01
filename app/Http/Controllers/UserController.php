<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use OpenApi\Annotations as OA;

class UserController extends Controller
{
    /**
     * @OA\Get(
     *     path="/users",
     *     summary="Visszaadja az összes felhasználót",
     *     @OA\Response(
     *         response=200,
     *         description="Sikeres válasz",
     *         @OA\JsonContent(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/User")
     *         )
     *     )
     * )
     */
    public function index()
    {
        $users = User::all();
        return response()->json($users);
    }

    /**
     * @OA\Post(
     *     path="/users",
     *     summary="Új felhasználó létrehozása",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/User")
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="Felhasználó létrehozva",
     *         @OA\JsonContent(ref="#/components/schemas/User")
     *     )
     * )
     */
    public function store(Request $request)
    {
        //TODO: validate the request!!!

        $user = User::create($request->all());
        return response()->json($user, 201);
    }

    /**
     * @OA\Get(
     *     path="/users/{id}",
     *     summary="Visszaad egy adott felhasználót",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="A felhasználó azonosítója",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Sikeres válasz",
     *         @OA\JsonContent(ref="#/components/schemas/User")
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Felhasználó nem található"
     *     )
     * )
     */
    public function show(string $id)
    {
        $user = User::findOrFail($id);
        return response()->json($user);
    }

    /**
     * @OA\Put(
     *     path="/users/{id}",
     *     summary="Frissít egy adott felhasználót",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="A felhasználó azonosítója",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/User")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Felhasználó frissítve",
     *         @OA\JsonContent(ref="#/components/schemas/User")
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Felhasználó nem található"
     *     )
     * )
     */
    public function update(Request $request, string $id)
    {
        //TODO: validate the request!!!

        $user = User::findOrFail($id);
        $user->update($request->all());
        return response()->json($user);
    }

    /**
     * @OA\Delete(
     *     path="/users/{id}",
     *     summary="Töröl egy adott felhasználót",
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
        $user = User::findOrFail($id);
        $user->delete();
        return response()->noContent();
    }
}