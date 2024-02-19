import Lake
open Lake DSL

package «start» where
  -- add package configuration options here

lean_lib «Start» where
  -- add library configuration options here

@[default_target]
lean_exe «start» where
  root := `Main
