<?php

namespace App\Models;

use OpenApi\Annotations as OA;

/**
 * @OA\Schema(
 *     schema="Task",
 *     type="object",
 *     @OA\Property(
 *         property="id",
 *         type="integer",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="title",
 *         type="string",
 *         example="John Doe"
 *     ),
 *      @OA\Property(
 *         property="description",
 *         type="string",
 *         example="Quo laboriosam molestiae ipsa omnis aut. Magnam repellendus dolores repudiandae voluptas voluptate et. "
 *     ),
 *     @OA\Property(
 *         property="completed",
 *         type="boolean",
 *         example=1
 *     ),
 *     @OA\Property(
 *         property="created_at",
 *         type="string",
 *         format="date-time",
 *         example="2023-10-01T12:00:00Z"
 *     ),
 *     @OA\Property(
 *         property="updated_at",
 *         type="string",
 *         format="date-time",
 *         example="2023-10-01T12:00:00Z"
 *     )
 * )
 */
class TaskSchema
{
    // Ez az osztály csak a Swagger séma definíciójához szükséges.
}