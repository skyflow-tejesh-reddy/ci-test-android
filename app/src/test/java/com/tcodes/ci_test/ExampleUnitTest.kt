package com.tcodes.ci_test

import org.junit.Test

import org.junit.Assert.*

/**
 * Example local unit test, which will execute on the development machine (host).
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
class ExampleUnitTest {
    @Test
    fun addition_isCorrect() {
        assertEquals(4, 2 + 2)
    }

    @Test
    fun just_a_test() {
        assertEquals(1, 1)
    }

    @Test
    fun intentionally_failing_test() {
        assertEquals(2, 3)
    }
}