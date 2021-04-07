lbl_80108A90:
/* 80108A90  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80108A94  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80108A98  80 06 5F 1C */	lwz r0, 0x5f1c(r6)
/* 80108A9C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80108AA0  41 82 00 48 */	beq lbl_80108AE8
/* 80108AA4  80 C3 28 58 */	lwz r6, 0x2858(r3)
/* 80108AA8  28 06 00 00 */	cmplwi r6, 0
/* 80108AAC  41 82 00 3C */	beq lbl_80108AE8
/* 80108AB0  80 06 04 9C */	lwz r0, 0x49c(r6)
/* 80108AB4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80108AB8  41 82 00 30 */	beq lbl_80108AE8
/* 80108ABC  80 03 28 54 */	lwz r0, 0x2854(r3)
/* 80108AC0  7C 04 00 40 */	cmplw r4, r0
/* 80108AC4  40 82 00 24 */	bne lbl_80108AE8
/* 80108AC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80108ACC  D0 03 37 C8 */	stfs f0, 0x37c8(r3)
/* 80108AD0  C0 05 00 04 */	lfs f0, 4(r5)
/* 80108AD4  D0 03 37 CC */	stfs f0, 0x37cc(r3)
/* 80108AD8  C0 05 00 08 */	lfs f0, 8(r5)
/* 80108ADC  D0 03 37 D0 */	stfs f0, 0x37d0(r3)
/* 80108AE0  38 60 00 01 */	li r3, 1
/* 80108AE4  4E 80 00 20 */	blr 
lbl_80108AE8:
/* 80108AE8  80 C3 28 50 */	lwz r6, 0x2850(r3)
/* 80108AEC  28 06 00 00 */	cmplwi r6, 0
/* 80108AF0  41 82 00 3C */	beq lbl_80108B2C
/* 80108AF4  80 06 04 9C */	lwz r0, 0x49c(r6)
/* 80108AF8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80108AFC  41 82 00 30 */	beq lbl_80108B2C
/* 80108B00  80 03 28 4C */	lwz r0, 0x284c(r3)
/* 80108B04  7C 04 00 40 */	cmplw r4, r0
/* 80108B08  40 82 00 24 */	bne lbl_80108B2C
/* 80108B0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80108B10  D0 03 37 F8 */	stfs f0, 0x37f8(r3)
/* 80108B14  C0 05 00 04 */	lfs f0, 4(r5)
/* 80108B18  D0 03 37 FC */	stfs f0, 0x37fc(r3)
/* 80108B1C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80108B20  D0 03 38 00 */	stfs f0, 0x3800(r3)
/* 80108B24  38 60 00 01 */	li r3, 1
/* 80108B28  4E 80 00 20 */	blr 
lbl_80108B2C:
/* 80108B2C  38 60 00 00 */	li r3, 0
/* 80108B30  4E 80 00 20 */	blr 
