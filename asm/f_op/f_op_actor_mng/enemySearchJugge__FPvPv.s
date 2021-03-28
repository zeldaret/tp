lbl_8001C9CC:
/* 8001C9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001C9D0  7C 08 02 A6 */	mflr r0
/* 8001C9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001C9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001C9DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001C9E0  41 82 00 24 */	beq lbl_8001CA04
/* 8001C9E4  4B FF C2 FD */	bl fopAc_IsActor__FPv
/* 8001C9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8001C9EC  41 82 00 18 */	beq lbl_8001CA04
/* 8001C9F0  88 1F 04 96 */	lbz r0, 0x496(r31)
/* 8001C9F4  28 00 00 02 */	cmplwi r0, 2
/* 8001C9F8  40 82 00 0C */	bne lbl_8001CA04
/* 8001C9FC  7F E3 FB 78 */	mr r3, r31
/* 8001CA00  48 00 00 08 */	b lbl_8001CA08
lbl_8001CA04:
/* 8001CA04  38 60 00 00 */	li r3, 0
lbl_8001CA08:
/* 8001CA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001CA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001CA10  7C 08 03 A6 */	mtlr r0
/* 8001CA14  38 21 00 10 */	addi r1, r1, 0x10
/* 8001CA18  4E 80 00 20 */	blr 
