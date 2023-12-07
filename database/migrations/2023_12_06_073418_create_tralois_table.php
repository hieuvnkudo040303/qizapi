<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tralois', function (Blueprint $table) {
            $table->id();
            $table->foreignId('de_id')->constrained();
            $table->foreignId('cauhoi_id')->constrained();
            $table->foreignId('luachon_id')->nullable();
            $table->boolean('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tralois');
    }
};
