lbl_80070158:
/* 80070158  3C 80 80 3B */	lis r4, __vt__15dAttDrawParam_c@ha /* 0x803A9C54@ha */
/* 8007015C  38 04 9C 54 */	addi r0, r4, __vt__15dAttDrawParam_c@l /* 0x803A9C54@l */
/* 80070160  90 03 00 00 */	stw r0, 0(r3)
/* 80070164  C0 02 8C 5C */	lfs f0, lit_4084(r2)
/* 80070168  D0 03 00 08 */	stfs f0, 8(r3)
/* 8007016C  C0 02 8C 60 */	lfs f0, lit_4085(r2)
/* 80070170  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80070174  4E 80 00 20 */	blr 
