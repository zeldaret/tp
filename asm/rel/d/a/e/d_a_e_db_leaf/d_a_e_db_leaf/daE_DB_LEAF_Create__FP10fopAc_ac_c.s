lbl_806A205C:
/* 806A205C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A2060  7C 08 02 A6 */	mflr r0
/* 806A2064  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A2068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A206C  93 C1 00 08 */	stw r30, 8(r1)
/* 806A2070  7C 7F 1B 78 */	mr r31, r3
/* 806A2074  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806A2078  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806A207C  40 82 00 1C */	bne lbl_806A2098
/* 806A2080  28 1F 00 00 */	cmplwi r31, 0
/* 806A2084  41 82 00 08 */	beq lbl_806A208C
/* 806A2088  4B 97 6A DD */	bl __ct__10fopAc_ac_cFv
lbl_806A208C:
/* 806A208C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806A2090  60 00 00 08 */	ori r0, r0, 8
/* 806A2094  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806A2098:
/* 806A2098  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806A209C  3C 80 80 6A */	lis r4, d_a_e_db_leaf__stringBase0@ha /* 0x806A2118@ha */
/* 806A20A0  38 84 21 18 */	addi r4, r4, d_a_e_db_leaf__stringBase0@l /* 0x806A2118@l */
/* 806A20A4  4B 98 AE 19 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806A20A8  7C 7E 1B 78 */	mr r30, r3
/* 806A20AC  2C 1E 00 04 */	cmpwi r30, 4
/* 806A20B0  40 82 00 40 */	bne lbl_806A20F0
/* 806A20B4  7F E3 FB 78 */	mr r3, r31
/* 806A20B8  3C 80 80 6A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806A1F5C@ha */
/* 806A20BC  38 84 1F 5C */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806A1F5C@l */
/* 806A20C0  38 A0 0A 80 */	li r5, 0xa80
/* 806A20C4  4B 97 83 ED */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806A20C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A20CC  40 82 00 0C */	bne lbl_806A20D8
/* 806A20D0  38 60 00 05 */	li r3, 5
/* 806A20D4  48 00 00 20 */	b lbl_806A20F4
lbl_806A20D8:
/* 806A20D8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A20DC  80 63 00 04 */	lwz r3, 4(r3)
/* 806A20E0  38 03 00 24 */	addi r0, r3, 0x24
/* 806A20E4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806A20E8  7F E3 FB 78 */	mr r3, r31
/* 806A20EC  4B FF FD B5 */	bl daE_DB_LEAF_Execute__FP15e_db_leaf_class
lbl_806A20F0:
/* 806A20F0  7F C3 F3 78 */	mr r3, r30
lbl_806A20F4:
/* 806A20F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A20F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A20FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A2100  7C 08 03 A6 */	mtlr r0
/* 806A2104  38 21 00 10 */	addi r1, r1, 0x10
/* 806A2108  4E 80 00 20 */	blr 
