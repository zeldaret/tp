lbl_80BA1888:
/* 80BA1888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA188C  7C 08 02 A6 */	mflr r0
/* 80BA1890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1894  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BA23DC@ha */
/* 80BA1898  38 84 23 DC */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80BA23DC@l */
/* 80BA189C  3C A0 80 BA */	lis r5, data_80BA2580@ha /* 0x80BA2580@ha */
/* 80BA18A0  38 E5 25 80 */	addi r7, r5, data_80BA2580@l /* 0x80BA2580@l */
/* 80BA18A4  88 07 00 00 */	lbz r0, 0(r7)
/* 80BA18A8  7C 00 07 75 */	extsb. r0, r0
/* 80BA18AC  40 82 00 A0 */	bne lbl_80BA194C
/* 80BA18B0  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 80BA18B4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80BA18B8  90 A4 00 68 */	stw r5, 0x68(r4)
/* 80BA18BC  90 04 00 6C */	stw r0, 0x6c(r4)
/* 80BA18C0  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80BA18C4  90 04 00 70 */	stw r0, 0x70(r4)
/* 80BA18C8  38 C4 00 68 */	addi r6, r4, 0x68
/* 80BA18CC  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 80BA18D0  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80BA18D4  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80BA18D8  90 06 00 10 */	stw r0, 0x10(r6)
/* 80BA18DC  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80BA18E0  90 06 00 14 */	stw r0, 0x14(r6)
/* 80BA18E4  80 A4 00 38 */	lwz r5, 0x38(r4)
/* 80BA18E8  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80BA18EC  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80BA18F0  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80BA18F4  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80BA18F8  90 06 00 20 */	stw r0, 0x20(r6)
/* 80BA18FC  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 80BA1900  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80BA1904  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80BA1908  90 06 00 28 */	stw r0, 0x28(r6)
/* 80BA190C  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80BA1910  90 06 00 2C */	stw r0, 0x2c(r6)
/* 80BA1914  80 A4 00 50 */	lwz r5, 0x50(r4)
/* 80BA1918  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80BA191C  90 A6 00 30 */	stw r5, 0x30(r6)
/* 80BA1920  90 06 00 34 */	stw r0, 0x34(r6)
/* 80BA1924  80 04 00 58 */	lwz r0, 0x58(r4)
/* 80BA1928  90 06 00 38 */	stw r0, 0x38(r6)
/* 80BA192C  80 A4 00 5C */	lwz r5, 0x5c(r4)
/* 80BA1930  80 04 00 60 */	lwz r0, 0x60(r4)
/* 80BA1934  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 80BA1938  90 06 00 40 */	stw r0, 0x40(r6)
/* 80BA193C  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80BA1940  90 06 00 44 */	stw r0, 0x44(r6)
/* 80BA1944  38 00 00 01 */	li r0, 1
/* 80BA1948  98 07 00 00 */	stb r0, 0(r7)
lbl_80BA194C:
/* 80BA194C  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 80BA1950  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BA1954  39 84 00 68 */	addi r12, r4, 0x68
/* 80BA1958  7D 8C 02 14 */	add r12, r12, r0
/* 80BA195C  4B 7C 07 29 */	bl __ptmf_scall
/* 80BA1960  60 00 00 00 */	nop 
/* 80BA1964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1968  7C 08 03 A6 */	mtlr r0
/* 80BA196C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1970  4E 80 00 20 */	blr 
