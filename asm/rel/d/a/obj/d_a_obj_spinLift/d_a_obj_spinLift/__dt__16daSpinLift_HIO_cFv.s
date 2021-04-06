lbl_80CE4C10:
/* 80CE4C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4C14  7C 08 02 A6 */	mflr r0
/* 80CE4C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE4C20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE4C24  41 82 00 30 */	beq lbl_80CE4C54
/* 80CE4C28  3C 60 80 CE */	lis r3, __vt__16daSpinLift_HIO_c@ha /* 0x80CE4EA4@ha */
/* 80CE4C2C  38 03 4E A4 */	addi r0, r3, __vt__16daSpinLift_HIO_c@l /* 0x80CE4EA4@l */
/* 80CE4C30  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE4C34  41 82 00 10 */	beq lbl_80CE4C44
/* 80CE4C38  3C 60 80 CE */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CE4EB0@ha */
/* 80CE4C3C  38 03 4E B0 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CE4EB0@l */
/* 80CE4C40  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE4C44:
/* 80CE4C44  7C 80 07 35 */	extsh. r0, r4
/* 80CE4C48  40 81 00 0C */	ble lbl_80CE4C54
/* 80CE4C4C  7F E3 FB 78 */	mr r3, r31
/* 80CE4C50  4B 5E A0 ED */	bl __dl__FPv
lbl_80CE4C54:
/* 80CE4C54  7F E3 FB 78 */	mr r3, r31
/* 80CE4C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE4C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4C60  7C 08 03 A6 */	mtlr r0
/* 80CE4C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4C68  4E 80 00 20 */	blr 
