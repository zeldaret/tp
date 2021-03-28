lbl_800346A4:
/* 800346A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800346A8  7C 08 02 A6 */	mflr r0
/* 800346AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800346B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800346B4  7C 7F 1B 78 */	mr r31, r3
/* 800346B8  4B FF E2 A1 */	bl init__21dSv_player_status_a_cFv
/* 800346BC  38 7F 00 28 */	addi r3, r31, 0x28
/* 800346C0  4B FF E4 91 */	bl init__21dSv_player_status_b_cFv
/* 800346C4  38 7F 00 40 */	addi r3, r31, 0x40
/* 800346C8  4B FF E5 45 */	bl init__17dSv_horse_place_cFv
/* 800346CC  38 7F 00 58 */	addi r3, r31, 0x58
/* 800346D0  4B FF E5 F9 */	bl init__25dSv_player_return_place_cFv
/* 800346D4  38 7F 00 64 */	addi r3, r31, 0x64
/* 800346D8  4B FF E6 89 */	bl init__33dSv_player_field_last_stay_info_cFv
/* 800346DC  38 7F 00 80 */	addi r3, r31, 0x80
/* 800346E0  4B FF E7 D1 */	bl init__27dSv_player_last_mark_info_cFv
/* 800346E4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 800346E8  4B FF E8 A9 */	bl init__17dSv_player_item_cFv
/* 800346EC  38 7F 00 CC */	addi r3, r31, 0xcc
/* 800346F0  4B FF F7 51 */	bl init__21dSv_player_get_item_cFv
/* 800346F4  38 7F 00 EC */	addi r3, r31, 0xec
/* 800346F8  4B FF F8 09 */	bl init__24dSv_player_item_record_cFv
/* 800346FC  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 80034700  4B FF F9 41 */	bl init__21dSv_player_item_max_cFv
/* 80034704  38 7F 01 00 */	addi r3, r31, 0x100
/* 80034708  4B FF FA A5 */	bl init__20dSv_player_collect_cFv
/* 8003470C  38 7F 01 10 */	addi r3, r31, 0x110
/* 80034710  4B FF FB A5 */	bl init__17dSv_player_wolf_cFv
/* 80034714  38 7F 01 14 */	addi r3, r31, 0x114
/* 80034718  4B FF FB C5 */	bl init__16dSv_light_drop_cFv
/* 8003471C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 80034720  4B FF FC BD */	bl init__17dSv_letter_info_cFv
/* 80034724  38 7F 01 6C */	addi r3, r31, 0x16c
/* 80034728  4B FF FD A1 */	bl init__18dSv_fishing_info_cFv
/* 8003472C  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80034730  4B FF FD E9 */	bl init__17dSv_player_info_cFv
/* 80034734  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 80034738  4B FF FE 75 */	bl init__19dSv_player_config_cFv
/* 8003473C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80034740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80034744  7C 08 03 A6 */	mtlr r0
/* 80034748  38 21 00 10 */	addi r1, r1, 0x10
/* 8003474C  4E 80 00 20 */	blr 
