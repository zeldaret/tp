lbl_809EF01C:
/* 809EF01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EF020  7C 08 02 A6 */	mflr r0
/* 809EF024  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EF028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EF02C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EF030  41 82 00 1C */	beq lbl_809EF04C
/* 809EF034  3C A0 80 9F */	lis r5, __vt__10cCcD_GStts@ha /* 0x809EFB7C@ha */
/* 809EF038  38 05 FB 7C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809EFB7C@l */
/* 809EF03C  90 1F 00 00 */	stw r0, 0(r31)
/* 809EF040  7C 80 07 35 */	extsh. r0, r4
/* 809EF044  40 81 00 08 */	ble lbl_809EF04C
/* 809EF048  4B 8D FC F5 */	bl __dl__FPv
lbl_809EF04C:
/* 809EF04C  7F E3 FB 78 */	mr r3, r31
/* 809EF050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EF054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EF058  7C 08 03 A6 */	mtlr r0
/* 809EF05C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EF060  4E 80 00 20 */	blr 
