lbl_80950878:
/* 80950878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095087C  7C 08 02 A6 */	mflr r0
/* 80950880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80950884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80950888  7C 7F 1B 78 */	mr r31, r3
/* 8095088C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80950890  3C 80 80 95 */	lis r4, stringBase0@ha
/* 80950894  38 84 13 1C */	addi r4, r4, stringBase0@l
/* 80950898  4B 6D C7 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8095089C  88 1F 0B 09 */	lbz r0, 0xb09(r31)
/* 809508A0  28 00 00 00 */	cmplwi r0, 0
/* 809508A4  41 82 00 10 */	beq lbl_809508B4
/* 809508A8  38 00 00 00 */	li r0, 0
/* 809508AC  3C 60 80 95 */	lis r3, struct_8095158C+0x1@ha
/* 809508B0  98 03 15 8D */	stb r0, struct_8095158C+0x1@l(r3)
lbl_809508B4:
/* 809508B4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 809508B8  28 00 00 00 */	cmplwi r0, 0
/* 809508BC  41 82 00 0C */	beq lbl_809508C8
/* 809508C0  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 809508C4  4B 96 D7 34 */	b deleteObject__14Z2SoundObjBaseFv
lbl_809508C8:
/* 809508C8  38 60 00 01 */	li r3, 1
/* 809508CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809508D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809508D4  7C 08 03 A6 */	mtlr r0
/* 809508D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809508DC  4E 80 00 20 */	blr 
