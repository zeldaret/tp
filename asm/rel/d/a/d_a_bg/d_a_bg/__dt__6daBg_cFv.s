lbl_80458788:
/* 80458788  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045878C  7C 08 02 A6 */	mflr r0
/* 80458790  90 01 00 24 */	stw r0, 0x24(r1)
/* 80458794  39 61 00 20 */	addi r11, r1, 0x20
/* 80458798  4B F0 9A 45 */	bl _savegpr_29
/* 8045879C  7C 7D 1B 79 */	or. r29, r3, r3
/* 804587A0  7C 9E 23 78 */	mr r30, r4
/* 804587A4  41 82 00 E4 */	beq lbl_80458888
/* 804587A8  83 FD 00 B0 */	lwz r31, 0xb0(r29)
/* 804587AC  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 804587B0  28 00 00 00 */	cmplwi r0, 0
/* 804587B4  41 82 00 38 */	beq lbl_804587EC
/* 804587B8  80 9D 05 E8 */	lwz r4, 0x5e8(r29)
/* 804587BC  28 04 00 00 */	cmplwi r4, 0
/* 804587C0  41 82 00 2C */	beq lbl_804587EC
/* 804587C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804587C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804587CC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804587D0  4B C1 BA 81 */	bl Release__4cBgSFP9dBgW_Base
/* 804587D4  38 80 00 00 */	li r4, 0
/* 804587D8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 804587DC  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 804587E0  1C 1F 04 04 */	mulli r0, r31, 0x404
/* 804587E4  7C 63 02 14 */	add r3, r3, r0
/* 804587E8  90 83 04 00 */	stw r4, 0x400(r3)
lbl_804587EC:
/* 804587EC  80 1D 00 F0 */	lwz r0, 0xf0(r29)
/* 804587F0  28 00 00 00 */	cmplwi r0, 0
/* 804587F4  41 82 00 38 */	beq lbl_8045882C
/* 804587F8  80 9D 05 EC */	lwz r4, 0x5ec(r29)
/* 804587FC  28 04 00 00 */	cmplwi r4, 0
/* 80458800  41 82 00 2C */	beq lbl_8045882C
/* 80458804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80458808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045880C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80458810  4B C1 BA 41 */	bl Release__4cBgSFP9dBgW_Base
/* 80458814  38 80 00 00 */	li r4, 0
/* 80458818  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8045881C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80458820  1C 1F 04 04 */	mulli r0, r31, 0x404
/* 80458824  7C 63 02 14 */	add r3, r3, r0
/* 80458828  90 83 04 00 */	stw r4, 0x400(r3)
lbl_8045882C:
/* 8045882C  7F E3 FB 78 */	mr r3, r31
/* 80458830  4B BD 91 99 */	bl deleteRoomGrass__9daGrass_cFi
/* 80458834  7F E3 FB 78 */	mr r3, r31
/* 80458838  4B BD 91 E9 */	bl deleteRoomFlower__9daGrass_cFi
/* 8045883C  57 E4 10 3A */	slwi r4, r31, 2
/* 80458840  3C 60 80 42 */	lis r3, mRoom__7daSus_c@ha /* 0x8042447C@ha */
/* 80458844  38 03 44 7C */	addi r0, r3, mRoom__7daSus_c@l /* 0x8042447C@l */
/* 80458848  7C 60 22 14 */	add r3, r0, r4
/* 8045884C  4B BD 89 B1 */	bl reset__Q27daSus_c6room_cFv
/* 80458850  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80458854  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 80458858  1C 1F 04 04 */	mulli r0, r31, 0x404
/* 8045885C  7C 63 02 14 */	add r3, r3, r0
/* 80458860  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80458864  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80458868  98 03 03 F4 */	stb r0, 0x3f4(r3)
/* 8045886C  7F A3 EB 78 */	mr r3, r29
/* 80458870  38 80 00 00 */	li r4, 0
/* 80458874  4B BC 04 19 */	bl __dt__10fopAc_ac_cFv
/* 80458878  7F C0 07 35 */	extsh. r0, r30
/* 8045887C  40 81 00 0C */	ble lbl_80458888
/* 80458880  7F A3 EB 78 */	mr r3, r29
/* 80458884  4B E7 64 B9 */	bl __dl__FPv
lbl_80458888:
/* 80458888  7F A3 EB 78 */	mr r3, r29
/* 8045888C  39 61 00 20 */	addi r11, r1, 0x20
/* 80458890  4B F0 99 99 */	bl _restgpr_29
/* 80458894  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80458898  7C 08 03 A6 */	mtlr r0
/* 8045889C  38 21 00 20 */	addi r1, r1, 0x20
/* 804588A0  4E 80 00 20 */	blr 
