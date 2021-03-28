lbl_80651B1C:
/* 80651B1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80651B20  7C 08 02 A6 */	mflr r0
/* 80651B24  90 01 00 44 */	stw r0, 0x44(r1)
/* 80651B28  39 61 00 40 */	addi r11, r1, 0x40
/* 80651B2C  4B D1 06 9C */	b _savegpr_24
/* 80651B30  7C 7E 1B 78 */	mr r30, r3
/* 80651B34  3C 60 80 65 */	lis r3, lit_3649@ha
/* 80651B38  3B 63 27 3C */	addi r27, r3, lit_3649@l
/* 80651B3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80651B40  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80651B44  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80651B48  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80651B4C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80651B50  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80651B54  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80651B58  C0 1B 00 80 */	lfs f0, 0x80(r27)
/* 80651B5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80651B60  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80651B64  3B E0 00 00 */	li r31, 0
/* 80651B68  3B A0 00 00 */	li r29, 0
/* 80651B6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80651B70  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80651B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80651B78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80651B7C  3B 43 23 3C */	addi r26, r3, 0x233c
lbl_80651B80:
/* 80651B80  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80651B84  80 63 00 04 */	lwz r3, 4(r3)
/* 80651B88  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80651B8C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80651B90  38 1F 00 02 */	addi r0, r31, 2
/* 80651B94  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80651B98  7C 63 02 14 */	add r3, r3, r0
/* 80651B9C  7F 84 E3 78 */	mr r4, r28
/* 80651BA0  4B CF 49 10 */	b PSMTXCopy
/* 80651BA4  C0 3B 00 30 */	lfs f1, 0x30(r27)
/* 80651BA8  FC 40 08 90 */	fmr f2, f1
/* 80651BAC  C0 7B 00 84 */	lfs f3, 0x84(r27)
/* 80651BB0  4B 9B B1 EC */	b transM__14mDoMtx_stack_cFfff
/* 80651BB4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80651BB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80651BBC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80651BC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80651BC4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80651BC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80651BCC  7F 1E EA 14 */	add r24, r30, r29
/* 80651BD0  3B 38 08 08 */	addi r25, r24, 0x808
/* 80651BD4  7F 23 CB 78 */	mr r3, r25
/* 80651BD8  38 81 00 08 */	addi r4, r1, 8
/* 80651BDC  4B C1 DA 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 80651BE0  7F 23 CB 78 */	mr r3, r25
/* 80651BE4  C0 3B 00 88 */	lfs f1, 0x88(r27)
/* 80651BE8  4B C1 DB 20 */	b SetR__8cM3dGSphFf
/* 80651BEC  7F 43 D3 78 */	mr r3, r26
/* 80651BF0  38 98 06 E4 */	addi r4, r24, 0x6e4
/* 80651BF4  4B C1 2F B4 */	b Set__4cCcSFP8cCcD_Obj
/* 80651BF8  3B FF 00 01 */	addi r31, r31, 1
/* 80651BFC  2C 1F 00 03 */	cmpwi r31, 3
/* 80651C00  3B BD 01 38 */	addi r29, r29, 0x138
/* 80651C04  41 80 FF 7C */	blt lbl_80651B80
/* 80651C08  39 61 00 40 */	addi r11, r1, 0x40
/* 80651C0C  4B D1 06 08 */	b _restgpr_24
/* 80651C10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80651C14  7C 08 03 A6 */	mtlr r0
/* 80651C18  38 21 00 40 */	addi r1, r1, 0x40
/* 80651C1C  4E 80 00 20 */	blr 
