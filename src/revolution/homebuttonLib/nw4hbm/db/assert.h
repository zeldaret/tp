#ifndef NW4R_DB_ASSERT_H
#define NW4R_DB_ASSERT_H

#include <revolution/types.h>

#include <stdio.h>

namespace nw4hbm {
    namespace db {
        // Forward declarations
        namespace detail {
            class ConsoleHead;
        }

        /* DECL_WEAK */ void VPanic(const char* file, int line, const char* fmt, std::va_list vlist);
        /* DECL_WEAK */ void VWarning(const char* file, int line, const char* fmt, std::va_list vlist);

        namespace detail {
            void Log(const char* fmt, ...);
            /* DECL_WEAK */ void Panic(const char* file, int line, const char* fmt, ...);
            /* DECL_WEAK */ void Warning(const char* file, int line, const char* msg, ...);
        }

        detail::ConsoleHead* Assertion_SetConsole(detail::ConsoleHead* console);
        detail::ConsoleHead* Assertion_GetConsole();
        void Assertion_ShowConsole(u32 time);
        void Assertion_HideConsole();
        void Assertion_SetWarningTime(u32 time);
        bool Assertion_SetAutoWarning(bool enable);
    }  // namespace db
}  // namespace nw4r

#define NW4R_WARNING(...) nw4hbm::db::Warning(__FILE__, __LINE__, __VA_ARGS__)
#define NW4R_PANIC(...) nw4hbm::db::Panic(__FILE__, __LINE__, __VA_ARGS__)
#define NW4R_DB_ASSERTMSG(line, exp, ...)                                                             \
    (void)((exp) || (nw4hbm::db::detail::Panic(__FILE__, line, __VA_ARGS__), 0))

#define NW4R_ASSERT(line, exp) \
    NW4R_DB_ASSERTMSG(line, (exp), "Failed assertion " #exp)

#define NW4R_ASSERT_CHECK_NULL(line, ptr) \
    NW4R_DB_ASSERTMSG(line, (ptr != NULL), "Pointer must not be NULL ("#ptr")")

// NW4HBM variants
#define NW4HBM_ASSERT_CHECK_NULL(line, ptr) \
    NW4R_DB_ASSERTMSG(line, (ptr != NULL), "NW4HBM:Pointer must not be NULL ("#ptr")")

#define NW4HBM_ASSERT(line, exp) \
    NW4R_DB_ASSERTMSG(line, (exp), "NW4HBM:Failed assertion " #exp)

#endif
