lbl_8009C930:
/* 8009C930  3C 80 80 3D */	lis r4, __vt__9J3DPacket@ha
/* 8009C934  38 04 D9 7C */	addi r0, r4, __vt__9J3DPacket@l
/* 8009C938  90 03 00 00 */	stw r0, 0(r3)
/* 8009C93C  38 A0 00 00 */	li r5, 0
/* 8009C940  90 A3 00 04 */	stw r5, 4(r3)
/* 8009C944  90 A3 00 08 */	stw r5, 8(r3)
/* 8009C948  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8009C94C  3C 80 80 3B */	lis r4, __vt__6dMdl_c@ha
/* 8009C950  38 04 F9 78 */	addi r0, r4, __vt__6dMdl_c@l
/* 8009C954  90 03 00 00 */	stw r0, 0(r3)
/* 8009C958  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8009C95C  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 8009C960  4E 80 00 20 */	blr 
