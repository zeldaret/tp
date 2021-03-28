lbl_804C4AE8:
/* 804C4AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C4AEC  7C 08 02 A6 */	mflr r0
/* 804C4AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C4AF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804C4AF8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 804C4AFC  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 804C4B00  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804C4B04  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C4B08  41 82 00 44 */	beq lbl_804C4B4C
/* 804C4B0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804C4B10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804C4B14  88 03 10 50 */	lbz r0, 0x1050(r3)
/* 804C4B18  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804C4B1C  40 82 00 30 */	bne lbl_804C4B4C
/* 804C4B20  38 64 07 F0 */	addi r3, r4, 0x7f0
/* 804C4B24  38 80 0D 04 */	li r4, 0xd04
/* 804C4B28  4B B6 FE 94 */	b isEventBit__11dSv_event_cCFUs
/* 804C4B2C  2C 03 00 00 */	cmpwi r3, 0
/* 804C4B30  41 82 00 1C */	beq lbl_804C4B4C
/* 804C4B34  3C 60 80 4C */	lis r3, daMidna_searchNpc__FP10fopAc_ac_cPv@ha
/* 804C4B38  38 63 47 50 */	addi r3, r3, daMidna_searchNpc__FP10fopAc_ac_cPv@l
/* 804C4B3C  38 81 00 08 */	addi r4, r1, 8
/* 804C4B40  4B B5 4C B8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804C4B44  28 03 00 00 */	cmplwi r3, 0
/* 804C4B48  41 82 00 0C */	beq lbl_804C4B54
lbl_804C4B4C:
/* 804C4B4C  38 60 00 00 */	li r3, 0
/* 804C4B50  48 00 00 08 */	b lbl_804C4B58
lbl_804C4B54:
/* 804C4B54  38 60 00 01 */	li r3, 1
lbl_804C4B58:
/* 804C4B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C4B5C  7C 08 03 A6 */	mtlr r0
/* 804C4B60  38 21 00 10 */	addi r1, r1, 0x10
/* 804C4B64  4E 80 00 20 */	blr 
