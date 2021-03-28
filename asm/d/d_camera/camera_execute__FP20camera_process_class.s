lbl_80181ECC:
/* 80181ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80181ED0  7C 08 02 A6 */	mflr r0
/* 80181ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80181ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80181EDC  7C 7F 1B 78 */	mr r31, r3
/* 80181EE0  4B FF F7 85 */	bl preparation__FP20camera_process_class
/* 80181EE4  80 6D 88 A0 */	lwz r3, m_object__7dDemo_c(r13)
/* 80181EE8  4B EB 72 41 */	bl getActiveCamera__14dDemo_object_cFv
/* 80181EEC  28 03 00 00 */	cmplwi r3, 0
/* 80181EF0  41 82 00 1C */	beq lbl_80181F0C
/* 80181EF4  38 7F 02 48 */	addi r3, r31, 0x248
/* 80181EF8  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80181EFC  FC 40 08 90 */	fmr f2, f1
/* 80181F00  C0 62 9D 08 */	lfs f3, lit_8020(r2)
/* 80181F04  C0 82 9C FC */	lfs f4, lit_8017(r2)
/* 80181F08  4B FE 40 AD */	bl setView__9dCamera_cFffff
lbl_80181F0C:
/* 80181F0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80181F10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80181F14  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80181F18  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80181F1C  90 03 5D 7C */	stw r0, 0x5d7c(r3)
/* 80181F20  80 1F 02 6C */	lwz r0, 0x26c(r31)
/* 80181F24  2C 00 00 00 */	cmpwi r0, 0
/* 80181F28  40 82 00 10 */	bne lbl_80181F38
/* 80181F2C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80181F30  4B FE 03 85 */	bl Run__9dCamera_cFv
/* 80181F34  48 00 00 0C */	b lbl_80181F40
lbl_80181F38:
/* 80181F38  38 7F 02 48 */	addi r3, r31, 0x248
/* 80181F3C  4B FE 0D FD */	bl NotRun__9dCamera_cFv
lbl_80181F40:
/* 80181F40  38 7F 02 48 */	addi r3, r31, 0x248
/* 80181F44  4B FE 10 F1 */	bl CalcTrimSize__9dCamera_cFv
/* 80181F48  7F E3 FB 78 */	mr r3, r31
/* 80181F4C  4B FF F8 B9 */	bl store__FP20camera_process_class
/* 80181F50  7F E3 FB 78 */	mr r3, r31
/* 80181F54  4B FF F7 B5 */	bl view_setup__FP20camera_process_class
/* 80181F58  38 60 00 01 */	li r3, 1
/* 80181F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80181F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80181F64  7C 08 03 A6 */	mtlr r0
/* 80181F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80181F6C  4E 80 00 20 */	blr 
