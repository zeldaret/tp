lbl_80CEBE24:
/* 80CEBE24  3C 80 80 CF */	lis r4, l_bmdIdx@ha
/* 80CEBE28  38 A4 CA B4 */	addi r5, r4, l_bmdIdx@l
/* 80CEBE2C  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80CEBE30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CEBE34  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 80CEBE38  80 03 07 F4 */	lwz r0, 0x7f4(r3)
/* 80CEBE3C  60 00 00 01 */	ori r0, r0, 1
/* 80CEBE40  90 03 07 F4 */	stw r0, 0x7f4(r3)
/* 80CEBE44  88 03 09 06 */	lbz r0, 0x906(r3)
/* 80CEBE48  54 00 10 3A */	slwi r0, r0, 2
/* 80CEBE4C  38 85 00 60 */	addi r4, r5, 0x60
/* 80CEBE50  7C 04 04 2E */	lfsx f0, r4, r0
/* 80CEBE54  D0 03 09 40 */	stfs f0, 0x940(r3)
/* 80CEBE58  38 00 00 00 */	li r0, 0
/* 80CEBE5C  90 03 09 0C */	stw r0, 0x90c(r3)
/* 80CEBE60  C0 05 01 5C */	lfs f0, 0x15c(r5)
/* 80CEBE64  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80CEBE68  C0 05 01 60 */	lfs f0, 0x160(r5)
/* 80CEBE6C  D0 03 05 34 */	stfs f0, 0x534(r3)
/* 80CEBE70  C0 03 07 40 */	lfs f0, 0x740(r3)
/* 80CEBE74  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80CEBE78  38 00 00 06 */	li r0, 6
/* 80CEBE7C  98 03 09 07 */	stb r0, 0x907(r3)
/* 80CEBE80  4E 80 00 20 */	blr 
