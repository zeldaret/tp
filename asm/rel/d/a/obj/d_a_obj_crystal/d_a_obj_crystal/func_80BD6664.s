lbl_80BD6664:
/* 80BD6664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6668  7C 08 02 A6 */	mflr r0
/* 80BD666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD6674  93 C1 00 08 */	stw r30, 8(r1)
/* 80BD6678  7C 7E 1B 78 */	mr r30, r3
/* 80BD667C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD6680  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD6684  40 82 00 1C */	bne lbl_80BD66A0
/* 80BD6688  28 1E 00 00 */	cmplwi r30, 0
/* 80BD668C  41 82 00 08 */	beq lbl_80BD6694
/* 80BD6690  4B 44 24 D5 */	bl __ct__10fopAc_ac_cFv
lbl_80BD6694:
/* 80BD6694  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BD6698  60 00 00 08 */	ori r0, r0, 8
/* 80BD669C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BD66A0:
/* 80BD66A0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BD66A4  3C 80 80 BD */	lis r4, l_arcName@ha /* 0x80BD68F0@ha */
/* 80BD66A8  38 84 68 F0 */	addi r4, r4, l_arcName@l /* 0x80BD68F0@l */
/* 80BD66AC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD66B0  4B 45 68 0D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD66B4  7C 7F 1B 78 */	mr r31, r3
/* 80BD66B8  2C 1F 00 04 */	cmpwi r31, 4
/* 80BD66BC  40 82 00 40 */	bne lbl_80BD66FC
/* 80BD66C0  7F C3 F3 78 */	mr r3, r30
/* 80BD66C4  3C 80 80 BD */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80BD6398@ha */
/* 80BD66C8  38 84 63 98 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80BD6398@l */
/* 80BD66CC  38 A0 40 00 */	li r5, 0x4000
/* 80BD66D0  4B 44 3D E1 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BD66D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD66D8  40 82 00 0C */	bne lbl_80BD66E4
/* 80BD66DC  38 60 00 05 */	li r3, 5
/* 80BD66E0  48 00 00 20 */	b lbl_80BD6700
lbl_80BD66E4:
/* 80BD66E4  7F C3 F3 78 */	mr r3, r30
/* 80BD66E8  4B FF FD 89 */	bl Create__14daObjCrystal_cFv
/* 80BD66EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BD66F0  40 82 00 0C */	bne lbl_80BD66FC
/* 80BD66F4  38 60 00 05 */	li r3, 5
/* 80BD66F8  48 00 00 08 */	b lbl_80BD6700
lbl_80BD66FC:
/* 80BD66FC  7F E3 FB 78 */	mr r3, r31
lbl_80BD6700:
/* 80BD6700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD6704  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BD6708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD670C  7C 08 03 A6 */	mtlr r0
/* 80BD6710  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6714  4E 80 00 20 */	blr 
