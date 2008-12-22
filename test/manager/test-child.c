/* -*- Mode: C; indent-tabs-mode: nil; c-basic-offset: 4 -*- */
/*
 *  Copyright (C) 2008  Kouhei Sutou <kou@cozmixng.org>
 *
 *  This library is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Lesser General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include <errno.h>
#include <locale.h>
#include <signal.h>

#include <milter/manager/milter-manager-child.h>

#include <milter-manager-test-utils.h>

#include <gcutter.h>

void test_get_command_line_string (void);
void test_get_user_name (void);

static MilterManagerChild *milter;

void
setup (void)
{
    milter = milter_manager_child_new("test-milter");
}

void
teardown (void)
{
    if (milter)
        g_object_unref(milter);
}

void
test_get_command_line_string (void)
{
    const gchar command[] = "/bin/echo";
    const gchar command_options[] = "-n";

    g_object_set(milter,
                 "command", command,
                 "command-options", command_options,
                 NULL);
    cut_assert_equal_string("/bin/echo -n",
                            milter_manager_child_get_command_line_string(milter));
}

void
test_get_user_name (void)
{
    const gchar user_name[] = "Tom";

    g_object_set(milter,
                 "user-name", user_name,
                 NULL);
    cut_assert_equal_string("Tom",
                            milter_manager_child_get_user_name(milter));
}

/*
vi:ts=4:nowrap:ai:expandtab:sw=4
*/
