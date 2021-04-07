lbl_80D5B3B0:
/* 80D5B3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B3B4  7C 08 02 A6 */	mflr r0
/* 80D5B3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B3C0  7C 7F 1B 78 */	mr r31, r3
/* 80D5B3C4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5B3C8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5B3CC  40 82 00 1C */	bne lbl_80D5B3E8
/* 80D5B3D0  28 1F 00 00 */	cmplwi r31, 0
/* 80D5B3D4  41 82 00 08 */	beq lbl_80D5B3DC
/* 80D5B3D8  4B 2B D7 8D */	bl __ct__10fopAc_ac_cFv
lbl_80D5B3DC:
/* 80D5B3DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5B3E0  60 00 00 08 */	ori r0, r0, 8
/* 80D5B3E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5B3E8:
/* 80D5B3E8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D5B3EC  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D5B3F0  7F E3 FB 78 */	mr r3, r31
/* 80D5B3F4  4B FF FF 65 */	bl setBaseMtx__13daLv6CstaSw_cFv
/* 80D5B3F8  38 60 00 04 */	li r3, 4
/* 80D5B3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B404  7C 08 03 A6 */	mtlr r0
/* 80D5B408  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B40C  4E 80 00 20 */	blr 
