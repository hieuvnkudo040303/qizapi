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
        Schema::create('cauhois', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('noidung');
            $table->integer('mucdo');
            $table->string('image')->nullable();
            $table->foreignId('kienthuc_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cauhois');
    }
};
