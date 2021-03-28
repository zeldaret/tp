lbl_804D785C:
/* 804D785C  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 804D7860  3C 80 80 4E */	lis r4, lit_4282@ha
/* 804D7864  C0 04 9E CC */	lfs f0, lit_4282@l(r4)
/* 804D7868  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D786C  4C 80 00 20 */	bgelr 
/* 804D7870  38 00 00 02 */	li r0, 2
/* 804D7874  B0 03 06 1A */	sth r0, 0x61a(r3)
/* 804D7878  38 00 00 00 */	li r0, 0
/* 804D787C  B0 03 06 1C */	sth r0, 0x61c(r3)
/* 804D7880  3C 80 80 4E */	lis r4, lit_3963@ha
/* 804D7884  C0 04 9E 74 */	lfs f0, lit_3963@l(r4)
/* 804D7888  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 804D788C  4E 80 00 20 */	blr 
