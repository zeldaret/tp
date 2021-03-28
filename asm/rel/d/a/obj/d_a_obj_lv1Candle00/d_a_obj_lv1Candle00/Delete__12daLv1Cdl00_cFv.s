lbl_80C56890:
/* 80C56890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56894  7C 08 02 A6 */	mflr r0
/* 80C56898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5689C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C568A0  7C 7F 1B 78 */	mr r31, r3
/* 80C568A4  38 7F 07 34 */	addi r3, r31, 0x734
/* 80C568A8  4B 66 77 50 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C568AC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C568B0  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C568B4  38 84 6A B4 */	addi r4, r4, stringBase0@l
/* 80C568B8  4B 3D 67 50 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C568BC  88 1F 07 08 */	lbz r0, 0x708(r31)
/* 80C568C0  28 00 00 01 */	cmplwi r0, 1
/* 80C568C4  41 82 00 0C */	beq lbl_80C568D0
/* 80C568C8  28 00 00 02 */	cmplwi r0, 2
/* 80C568CC  40 82 00 0C */	bne lbl_80C568D8
lbl_80C568D0:
/* 80C568D0  38 7F 07 10 */	addi r3, r31, 0x710
/* 80C568D4  4B 55 10 58 */	b dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C568D8:
/* 80C568D8  38 60 00 01 */	li r3, 1
/* 80C568DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C568E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C568E4  7C 08 03 A6 */	mtlr r0
/* 80C568E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C568EC  4E 80 00 20 */	blr 
