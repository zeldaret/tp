lbl_8035F4A4:
/* 8035F4A4  7C 65 0E 70 */	srawi r5, r3, 1
/* 8035F4A8  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035F4AC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8035F4B0  54 A3 10 3A */	slwi r3, r5, 2
/* 8035F4B4  38 E3 01 B0 */	addi r7, r3, 0x1b0
/* 8035F4B8  7C E6 3A 14 */	add r7, r6, r7
/* 8035F4BC  41 82 00 14 */	beq lbl_8035F4D0
/* 8035F4C0  80 07 00 00 */	lwz r0, 0(r7)
/* 8035F4C4  50 80 73 62 */	rlwimi r0, r4, 0xe, 0xd, 0x11
/* 8035F4C8  90 07 00 00 */	stw r0, 0(r7)
/* 8035F4CC  48 00 00 10 */	b lbl_8035F4DC
lbl_8035F4D0:
/* 8035F4D0  80 07 00 00 */	lwz r0, 0(r7)
/* 8035F4D4  50 80 25 F6 */	rlwimi r0, r4, 4, 0x17, 0x1b
/* 8035F4D8  90 07 00 00 */	stw r0, 0(r7)
lbl_8035F4DC:
/* 8035F4DC  38 00 00 61 */	li r0, 0x61
/* 8035F4E0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035F4E4  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035F4E8  98 05 80 00 */	stb r0, 0x8000(r5)
/* 8035F4EC  38 00 00 00 */	li r0, 0
/* 8035F4F0  80 87 00 00 */	lwz r4, 0(r7)
/* 8035F4F4  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8035F4F8  B0 03 00 02 */	sth r0, 2(r3)
/* 8035F4FC  4E 80 00 20 */	blr 
