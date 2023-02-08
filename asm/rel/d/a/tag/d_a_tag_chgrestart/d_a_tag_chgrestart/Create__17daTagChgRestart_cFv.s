lbl_80D56758:
/* 80D56758  3C 80 80 D5 */	lis r4, lit_3650@ha /* 0x80D56AF4@ha */
/* 80D5675C  38 84 6A F4 */	addi r4, r4, lit_3650@l /* 0x80D56AF4@l */
/* 80D56760  C0 44 00 00 */	lfs f2, 0(r4)
/* 80D56764  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D56768  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5676C  D0 03 05 68 */	stfs f0, 0x568(r3)
/* 80D56770  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D56774  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D56778  D0 03 05 70 */	stfs f0, 0x570(r3)
/* 80D5677C  C0 24 00 04 */	lfs f1, 4(r4)
/* 80D56780  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D56784  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D56788  D0 03 05 74 */	stfs f0, 0x574(r3)
/* 80D5678C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D56790  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D56794  D0 03 05 7C */	stfs f0, 0x57c(r3)
/* 80D56798  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D5679C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D567A0  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 80D567A4  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D567A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D567AC  D0 03 05 88 */	stfs f0, 0x588(r3)
/* 80D567B0  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D567B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D567B8  D0 03 05 8C */	stfs f0, 0x58c(r3)
/* 80D567BC  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D567C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D567C4  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 80D567C8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80D567CC  D0 03 05 90 */	stfs f0, 0x590(r3)
/* 80D567D0  D0 03 05 84 */	stfs f0, 0x584(r3)
/* 80D567D4  D0 03 05 78 */	stfs f0, 0x578(r3)
/* 80D567D8  D0 03 05 6C */	stfs f0, 0x56c(r3)
/* 80D567DC  38 60 00 01 */	li r3, 1
/* 80D567E0  4E 80 00 20 */	blr 
