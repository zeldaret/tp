lbl_80CC6738:
/* 80CC6738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC673C  7C 08 02 A6 */	mflr r0
/* 80CC6740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6748  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC674C  7C 7F 1B 78 */	mr r31, r3
/* 80CC6750  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC6754  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC6758  40 82 00 60 */	bne lbl_80CC67B8
/* 80CC675C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CC6760  41 82 00 4C */	beq lbl_80CC67AC
/* 80CC6764  7C 1E 03 78 */	mr r30, r0
/* 80CC6768  4B 35 23 FC */	b __ct__10fopAc_ac_cFv
/* 80CC676C  3C 60 80 CC */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80CC6770  38 03 69 F0 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80CC6774  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CC6778  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 80CC677C  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 80CC6780  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CC6784  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CC6788  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CC678C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80CC6790  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CC6794  4B 3B CF CC */	b __ct__10dCcD_GSttsFv
/* 80CC6798  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CC679C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CC67A0  90 7E 05 F4 */	stw r3, 0x5f4(r30)
/* 80CC67A4  38 03 00 20 */	addi r0, r3, 0x20
/* 80CC67A8  90 1E 05 F8 */	stw r0, 0x5f8(r30)
lbl_80CC67AC:
/* 80CC67AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC67B0  60 00 00 08 */	ori r0, r0, 8
/* 80CC67B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC67B8:
/* 80CC67B8  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80CC67BC  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CC67C0  38 84 69 98 */	addi r4, r4, l_arcName@l
/* 80CC67C4  80 84 00 00 */	lwz r4, 0(r4)
/* 80CC67C8  4B 36 66 F4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC67CC  7C 7E 1B 78 */	mr r30, r3
/* 80CC67D0  2C 1E 00 04 */	cmpwi r30, 4
/* 80CC67D4  40 82 00 54 */	bne lbl_80CC6828
/* 80CC67D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CC67DC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80CC67E0  38 03 00 02 */	addi r0, r3, 2
/* 80CC67E4  98 1F 06 35 */	stb r0, 0x635(r31)
/* 80CC67E8  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80CC67EC  28 00 00 03 */	cmplwi r0, 3
/* 80CC67F0  40 80 00 0C */	bge lbl_80CC67FC
/* 80CC67F4  38 00 00 03 */	li r0, 3
/* 80CC67F8  98 1F 06 35 */	stb r0, 0x635(r31)
lbl_80CC67FC:
/* 80CC67FC  7F E3 FB 78 */	mr r3, r31
/* 80CC6800  3C 80 80 CC */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80CC6804  38 84 62 2C */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80CC6808  38 A0 14 20 */	li r5, 0x1420
/* 80CC680C  4B 35 3C A4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CC6810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC6814  40 82 00 0C */	bne lbl_80CC6820
/* 80CC6818  3B C0 00 05 */	li r30, 5
/* 80CC681C  48 00 00 0C */	b lbl_80CC6828
lbl_80CC6820:
/* 80CC6820  7F E3 FB 78 */	mr r3, r31
/* 80CC6824  4B FF EF C1 */	bl create_init__14daObjItaRope_cFv
lbl_80CC6828:
/* 80CC6828  7F C3 F3 78 */	mr r3, r30
/* 80CC682C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6830  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC6834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6838  7C 08 03 A6 */	mtlr r0
/* 80CC683C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6840  4E 80 00 20 */	blr 
