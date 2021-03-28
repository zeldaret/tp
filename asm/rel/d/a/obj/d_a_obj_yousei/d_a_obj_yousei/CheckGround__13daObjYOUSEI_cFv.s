lbl_804D080C:
/* 804D080C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804D0810  7C 08 02 A6 */	mflr r0
/* 804D0814  90 01 00 74 */	stw r0, 0x74(r1)
/* 804D0818  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 804D081C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 804D0820  7C 7F 1B 78 */	mr r31, r3
/* 804D0824  3B C1 00 14 */	addi r30, r1, 0x14
/* 804D0828  7F C3 F3 78 */	mr r3, r30
/* 804D082C  4B BA 6D 50 */	b __ct__11dBgS_GndChkFv
/* 804D0830  3C 60 80 4D */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 804D0834  38 63 17 B4 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 804D0838  90 61 00 24 */	stw r3, 0x24(r1)
/* 804D083C  38 03 00 0C */	addi r0, r3, 0xc
/* 804D0840  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D0844  38 03 00 18 */	addi r0, r3, 0x18
/* 804D0848  90 01 00 50 */	stw r0, 0x50(r1)
/* 804D084C  38 03 00 24 */	addi r0, r3, 0x24
/* 804D0850  90 01 00 60 */	stw r0, 0x60(r1)
/* 804D0854  38 7E 00 3C */	addi r3, r30, 0x3c
/* 804D0858  4B BA 86 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 804D085C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 804D0860  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 804D0864  90 61 00 24 */	stw r3, 0x24(r1)
/* 804D0868  38 03 00 0C */	addi r0, r3, 0xc
/* 804D086C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D0870  38 03 00 18 */	addi r0, r3, 0x18
/* 804D0874  90 01 00 50 */	stw r0, 0x50(r1)
/* 804D0878  38 03 00 24 */	addi r0, r3, 0x24
/* 804D087C  90 01 00 60 */	stw r0, 0x60(r1)
/* 804D0880  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804D0884  60 00 00 03 */	ori r0, r0, 3
/* 804D0888  90 01 00 64 */	stw r0, 0x64(r1)
/* 804D088C  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804D0890  3C 60 80 4D */	lis r3, lit_3802@ha
/* 804D0894  C0 23 16 6C */	lfs f1, lit_3802@l(r3)
/* 804D0898  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D089C  EC 21 00 2A */	fadds f1, f1, f0
/* 804D08A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D08A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 804D08A8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D08AC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804D08B0  7F C3 F3 78 */	mr r3, r30
/* 804D08B4  38 81 00 08 */	addi r4, r1, 8
/* 804D08B8  4B D9 74 70 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 804D08BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D08C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D08C4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D08C8  7F C4 F3 78 */	mr r4, r30
/* 804D08CC  4B BA 3B D4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804D08D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804D08D4  3C 60 80 4D */	lis r3, lit_4482@ha
/* 804D08D8  C0 03 17 14 */	lfs f0, lit_4482@l(r3)
/* 804D08DC  FC 20 08 18 */	frsp f1, f1
/* 804D08E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804D08E4  41 82 00 08 */	beq lbl_804D08EC
/* 804D08E8  D0 3F 04 AC */	stfs f1, 0x4ac(r31)
lbl_804D08EC:
/* 804D08EC  38 61 00 14 */	addi r3, r1, 0x14
/* 804D08F0  38 80 FF FF */	li r4, -1
/* 804D08F4  4B BA 6F F4 */	b __dt__18dBgS_ObjGndChk_AllFv
/* 804D08F8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804D08FC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804D0900  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804D0904  7C 08 03 A6 */	mtlr r0
/* 804D0908  38 21 00 70 */	addi r1, r1, 0x70
/* 804D090C  4E 80 00 20 */	blr 
