lbl_80C8BD80:
/* 80C8BD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8BD84  7C 08 02 A6 */	mflr r0
/* 80C8BD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8BD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8BD90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8BD94  41 82 00 1C */	beq lbl_80C8BDB0
/* 80C8BD98  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C8CD68@ha */
/* 80C8BD9C  38 05 CD 68 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C8CD68@l */
/* 80C8BDA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8BDA4  7C 80 07 35 */	extsh. r0, r4
/* 80C8BDA8  40 81 00 08 */	ble lbl_80C8BDB0
/* 80C8BDAC  4B 64 2F 91 */	bl __dl__FPv
lbl_80C8BDB0:
/* 80C8BDB0  7F E3 FB 78 */	mr r3, r31
/* 80C8BDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8BDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8BDBC  7C 08 03 A6 */	mtlr r0
/* 80C8BDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8BDC4  4E 80 00 20 */	blr 
