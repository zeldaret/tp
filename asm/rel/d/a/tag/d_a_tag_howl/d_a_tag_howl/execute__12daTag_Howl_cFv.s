lbl_8048D9C4:
/* 8048D9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D9C8  7C 08 02 A6 */	mflr r0
/* 8048D9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D9D4  7C 7F 1B 78 */	mr r31, r3
/* 8048D9D8  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8048D9DC  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)  /* 0x80450D64@l */
/* 8048D9E0  98 03 04 E2 */	stb r0, 0x4e2(r3)
/* 8048D9E4  38 00 00 00 */	li r0, 0
/* 8048D9E8  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8048D9EC  48 00 00 41 */	bl isAreaCheck__12daTag_Howl_cFv
/* 8048D9F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048D9F4  41 82 00 18 */	beq lbl_8048DA0C
/* 8048D9F8  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8048D9FC  60 00 00 80 */	ori r0, r0, 0x80
/* 8048DA00  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8048DA04  38 00 00 41 */	li r0, 0x41
/* 8048DA08  98 1F 05 4B */	stb r0, 0x54b(r31)
lbl_8048DA0C:
/* 8048DA0C  38 60 00 01 */	li r3, 1
/* 8048DA10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048DA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DA18  7C 08 03 A6 */	mtlr r0
/* 8048DA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DA20  4E 80 00 20 */	blr 
