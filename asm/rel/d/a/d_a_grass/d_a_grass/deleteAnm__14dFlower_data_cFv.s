lbl_80520AD8:
/* 80520AD8  88 03 00 01 */	lbz r0, 1(r3)
/* 80520ADC  7C 00 07 74 */	extsb r0, r0
/* 80520AE0  2C 00 00 08 */	cmpwi r0, 8
/* 80520AE4  4D 80 00 20 */	bltlr 
/* 80520AE8  38 C0 00 00 */	li r6, 0
/* 80520AEC  3C 80 80 45 */	lis r4, m_flower__9daGrass_c@ha /* 0x80450DB4@ha */
/* 80520AF0  38 A4 0D B4 */	addi r5, r4, m_flower__9daGrass_c@l /* 0x80450DB4@l */
/* 80520AF4  80 85 00 00 */	lwz r4, 0(r5)
/* 80520AF8  3C 84 00 01 */	addis r4, r4, 1
/* 80520AFC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80520B00  7C 84 02 14 */	add r4, r4, r0
/* 80520B04  98 C4 19 54 */	stb r6, 0x1954(r4)
/* 80520B08  80 A5 00 00 */	lwz r5, 0(r5)
/* 80520B0C  88 03 00 01 */	lbz r0, 1(r3)
/* 80520B10  7C 00 07 74 */	extsb r0, r0
/* 80520B14  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80520B18  3C 84 00 01 */	addis r4, r4, 1
/* 80520B1C  38 84 19 54 */	addi r4, r4, 0x1954
/* 80520B20  7C 85 22 14 */	add r4, r5, r4
/* 80520B24  A8 04 00 02 */	lha r0, 2(r4)
/* 80520B28  54 00 9F 7E */	rlwinm r0, r0, 0x13, 0x1d, 0x1f
/* 80520B2C  98 03 00 01 */	stb r0, 1(r3)
/* 80520B30  4E 80 00 20 */	blr 
