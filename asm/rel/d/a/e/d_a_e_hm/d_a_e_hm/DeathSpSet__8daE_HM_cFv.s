lbl_806E2D08:
/* 806E2D08  3C 80 80 6E */	lis r4, data_806E5C80@ha /* 0x806E5C80@ha */
/* 806E2D0C  38 84 5C 80 */	addi r4, r4, data_806E5C80@l /* 0x806E5C80@l */
/* 806E2D10  A8 84 00 00 */	lha r4, 0(r4)
/* 806E2D14  38 04 05 00 */	addi r0, r4, 0x500
/* 806E2D18  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 806E2D1C  3C 80 80 6E */	lis r4, l_HIO@ha /* 0x806E5C24@ha */
/* 806E2D20  38 84 5C 24 */	addi r4, r4, l_HIO@l /* 0x806E5C24@l */
/* 806E2D24  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 806E2D28  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 806E2D2C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 806E2D30  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 806E2D34  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 806E2D38  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 806E2D3C  4E 80 00 20 */	blr 
