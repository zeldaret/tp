lbl_80C9FF54:
/* 80C9FF54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9FF58  7C 08 02 A6 */	mflr r0
/* 80C9FF5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9FF60  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9FF64  4B 6C 22 75 */	bl _savegpr_28
/* 80C9FF68  7C 7C 1B 78 */	mr r28, r3
/* 80C9FF6C  88 03 02 F0 */	lbz r0, 0x2f0(r3)
/* 80C9FF70  28 00 00 00 */	cmplwi r0, 0
/* 80C9FF74  40 82 00 A8 */	bne lbl_80CA001C
/* 80C9FF78  48 00 01 A1 */	bl chkHit__15daObjIsuChild_cFv
/* 80C9FF7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9FF80  41 82 00 68 */	beq lbl_80C9FFE8
/* 80C9FF84  7F 83 E3 78 */	mr r3, r28
/* 80C9FF88  48 00 01 F9 */	bl callEmt__15daObjIsuChild_cFv
/* 80C9FF8C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801FE@ha */
/* 80C9FF90  38 03 01 FE */	addi r0, r3, 0x01FE /* 0x000801FE@l */
/* 80C9FF94  90 01 00 08 */	stw r0, 8(r1)
/* 80C9FF98  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C9FF9C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C9FFA0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C9FFA4  38 81 00 08 */	addi r4, r1, 8
/* 80C9FFA8  38 BC 00 38 */	addi r5, r28, 0x38
/* 80C9FFAC  38 C0 00 00 */	li r6, 0
/* 80C9FFB0  38 E0 00 00 */	li r7, 0
/* 80C9FFB4  3D 00 80 CA */	lis r8, lit_3963@ha /* 0x80CA03EC@ha */
/* 80C9FFB8  C0 28 03 EC */	lfs f1, lit_3963@l(r8)  /* 0x80CA03EC@l */
/* 80C9FFBC  FC 40 08 90 */	fmr f2, f1
/* 80C9FFC0  3D 00 80 CA */	lis r8, lit_3964@ha /* 0x80CA03F0@ha */
/* 80C9FFC4  C0 68 03 F0 */	lfs f3, lit_3964@l(r8)  /* 0x80CA03F0@l */
/* 80C9FFC8  FC 80 18 90 */	fmr f4, f3
/* 80C9FFCC  39 00 00 00 */	li r8, 0
/* 80C9FFD0  4B 60 B9 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C9FFD4  7F 83 E3 78 */	mr r3, r28
/* 80C9FFD8  48 00 00 E1 */	bl Delete__15daObjIsuChild_cFv
/* 80C9FFDC  38 00 00 01 */	li r0, 1
/* 80C9FFE0  98 1C 02 F0 */	stb r0, 0x2f0(r28)
/* 80C9FFE4  48 00 00 38 */	b lbl_80CA001C
lbl_80C9FFE8:
/* 80C9FFE8  3B A0 00 00 */	li r29, 0
/* 80C9FFEC  3B E0 00 00 */	li r31, 0
/* 80C9FFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9FFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9FFF8  3B C3 23 3C */	addi r30, r3, 0x233c
lbl_80C9FFFC:
/* 80C9FFFC  7F C3 F3 78 */	mr r3, r30
/* 80CA0000  38 9F 00 44 */	addi r4, r31, 0x44
/* 80CA0004  7C 9C 22 14 */	add r4, r28, r4
/* 80CA0008  4B 5C 4B A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80CA000C  3B BD 00 01 */	addi r29, r29, 1
/* 80CA0010  2C 1D 00 02 */	cmpwi r29, 2
/* 80CA0014  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80CA0018  41 80 FF E4 */	blt lbl_80C9FFFC
lbl_80CA001C:
/* 80CA001C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA0020  4B 6C 22 05 */	bl _restgpr_28
/* 80CA0024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA0028  7C 08 03 A6 */	mtlr r0
/* 80CA002C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA0030  4E 80 00 20 */	blr 
