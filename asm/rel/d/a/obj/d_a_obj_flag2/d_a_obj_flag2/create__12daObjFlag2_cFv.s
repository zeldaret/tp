lbl_80BED6A0:
/* 80BED6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED6A4  7C 08 02 A6 */	mflr r0
/* 80BED6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BED6B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BED6B4  7C 7E 1B 78 */	mr r30, r3
/* 80BED6B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BED6BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BED6C0  40 82 00 1C */	bne lbl_80BED6DC
/* 80BED6C4  28 1E 00 00 */	cmplwi r30, 0
/* 80BED6C8  41 82 00 08 */	beq lbl_80BED6D0
/* 80BED6CC  48 00 00 D9 */	bl __ct__12daObjFlag2_cFv
lbl_80BED6D0:
/* 80BED6D0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BED6D4  60 00 00 08 */	ori r0, r0, 8
/* 80BED6D8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BED6DC:
/* 80BED6DC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80BED6E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BED6E4  7C 05 07 74 */	extsb r5, r0
/* 80BED6E8  2C 05 FF FF */	cmpwi r5, -1
/* 80BED6EC  40 81 00 0C */	ble lbl_80BED6F8
/* 80BED6F0  2C 05 00 63 */	cmpwi r5, 0x63
/* 80BED6F4  40 81 00 10 */	ble lbl_80BED704
lbl_80BED6F8:
/* 80BED6F8  38 00 00 00 */	li r0, 0
/* 80BED6FC  98 1E 10 AC */	stb r0, 0x10ac(r30)
/* 80BED700  48 00 00 3C */	b lbl_80BED73C
lbl_80BED704:
/* 80BED704  38 00 00 01 */	li r0, 1
/* 80BED708  98 1E 10 AC */	stb r0, 0x10ac(r30)
/* 80BED70C  38 7E 10 AD */	addi r3, r30, 0x10ad
/* 80BED710  3C 80 80 BF */	lis r4, d_a_obj_flag2__stringBase0@ha /* 0x80BEE1E8@ha */
/* 80BED714  38 84 E1 E8 */	addi r4, r4, d_a_obj_flag2__stringBase0@l /* 0x80BEE1E8@l */
/* 80BED718  38 84 00 2A */	addi r4, r4, 0x2a
/* 80BED71C  4C C6 31 82 */	crclr 6
/* 80BED720  4B 77 8D BD */	bl sprintf
/* 80BED724  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80BED728  38 9E 10 AD */	addi r4, r30, 0x10ad
/* 80BED72C  4B 43 F7 91 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BED730  2C 03 00 04 */	cmpwi r3, 4
/* 80BED734  41 82 00 08 */	beq lbl_80BED73C
/* 80BED738  48 00 00 54 */	b lbl_80BED78C
lbl_80BED73C:
/* 80BED73C  7F C3 F3 78 */	mr r3, r30
/* 80BED740  4B 44 41 31 */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BED744  7C 64 1B 78 */	mr r4, r3
/* 80BED748  38 7E 05 74 */	addi r3, r30, 0x574
/* 80BED74C  4B 43 F7 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BED750  7C 7F 1B 78 */	mr r31, r3
/* 80BED754  2C 1F 00 04 */	cmpwi r31, 4
/* 80BED758  40 82 00 30 */	bne lbl_80BED788
/* 80BED75C  7F C3 F3 78 */	mr r3, r30
/* 80BED760  3C 80 80 BF */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80BED680@ha */
/* 80BED764  38 84 D6 80 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80BED680@l */
/* 80BED768  38 A0 08 20 */	li r5, 0x820
/* 80BED76C  4B 42 CD 45 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BED770  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BED774  40 82 00 0C */	bne lbl_80BED780
/* 80BED778  38 60 00 05 */	li r3, 5
/* 80BED77C  48 00 00 10 */	b lbl_80BED78C
lbl_80BED780:
/* 80BED780  7F C3 F3 78 */	mr r3, r30
/* 80BED784  4B FF FA A9 */	bl create_init__12daObjFlag2_cFv
lbl_80BED788:
/* 80BED788  7F E3 FB 78 */	mr r3, r31
lbl_80BED78C:
/* 80BED78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BED790  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BED794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BED798  7C 08 03 A6 */	mtlr r0
/* 80BED79C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BED7A0  4E 80 00 20 */	blr 
