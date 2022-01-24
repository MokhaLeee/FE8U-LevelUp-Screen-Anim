base_dir=$(dirname "$(readlink -f "$0")")

main_event="$base_dir/Buildfile.event"
source_rom="$base_dir/FE8U.gba"
target_rom="$base_dir/FE8_LevelUpScrren.gba"
ea_core="$base_dir/Tools/EventAssembler/ColorzCore.exe"


cd "$base_dir"
make clean
make all



cd "$base_dir"
echo "Preparing ROM"
cp -f "$source_rom" "$target_rom"
echo "Assembling"
"$ea_core" A FE8 "-output:$target_rom" "-input:$main_event"
echo "Done!"


