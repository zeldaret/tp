lbl_80CE3DAC:
/* 80CE3DAC  3C 80 80 CE */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CE4EB0@ha */
/* 80CE3DB0  38 04 4E B0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CE4EB0@l */
/* 80CE3DB4  90 03 00 00 */	stw r0, 0(r3)
/* 80CE3DB8  3C 80 80 CE */	lis r4, __vt__16daSpinLift_HIO_c@ha /* 0x80CE4EA4@ha */
/* 80CE3DBC  38 04 4E A4 */	addi r0, r4, __vt__16daSpinLift_HIO_c@l /* 0x80CE4EA4@l */
/* 80CE3DC0  90 03 00 00 */	stw r0, 0(r3)
/* 80CE3DC4  38 00 00 3C */	li r0, 0x3c
/* 80CE3DC8  98 03 00 04 */	stb r0, 4(r3)
/* 80CE3DCC  3C 80 80 CE */	lis r4, lit_3637@ha /* 0x80CE4CBC@ha */
/* 80CE3DD0  C0 04 4C BC */	lfs f0, lit_3637@l(r4)  /* 0x80CE4CBC@l */
/* 80CE3DD4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CE3DD8  38 00 00 04 */	li r0, 4
/* 80CE3DDC  98 03 00 0C */	stb r0, 0xc(r3)
/* 80CE3DE0  4E 80 00 20 */	blr 
