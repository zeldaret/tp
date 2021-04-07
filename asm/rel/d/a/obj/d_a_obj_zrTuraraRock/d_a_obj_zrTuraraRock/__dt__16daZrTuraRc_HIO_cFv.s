lbl_80D422D0:
/* 80D422D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D422D4  7C 08 02 A6 */	mflr r0
/* 80D422D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D422DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D422E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D422E4  41 82 00 30 */	beq lbl_80D42314
/* 80D422E8  3C 60 80 D4 */	lis r3, __vt__16daZrTuraRc_HIO_c@ha /* 0x80D42580@ha */
/* 80D422EC  38 03 25 80 */	addi r0, r3, __vt__16daZrTuraRc_HIO_c@l /* 0x80D42580@l */
/* 80D422F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D422F4  41 82 00 10 */	beq lbl_80D42304
/* 80D422F8  3C 60 80 D4 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D4258C@ha */
/* 80D422FC  38 03 25 8C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D4258C@l */
/* 80D42300  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D42304:
/* 80D42304  7C 80 07 35 */	extsh. r0, r4
/* 80D42308  40 81 00 0C */	ble lbl_80D42314
/* 80D4230C  7F E3 FB 78 */	mr r3, r31
/* 80D42310  4B 58 CA 2D */	bl __dl__FPv
lbl_80D42314:
/* 80D42314  7F E3 FB 78 */	mr r3, r31
/* 80D42318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4231C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42320  7C 08 03 A6 */	mtlr r0
/* 80D42324  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42328  4E 80 00 20 */	blr 
