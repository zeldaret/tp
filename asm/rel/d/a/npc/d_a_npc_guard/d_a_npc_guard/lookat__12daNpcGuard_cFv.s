lbl_809F1878:
/* 809F1878  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 809F187C  7C 08 02 A6 */	mflr r0
/* 809F1880  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 809F1884  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 809F1888  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 809F188C  7C 7F 1B 78 */	mr r31, r3
/* 809F1890  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 809F1894  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1898  40 80 00 1C */	bge lbl_809F18B4
/* 809F189C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F18A0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F18A4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F18A8  7C 63 02 14 */	add r3, r3, r0
/* 809F18AC  A8 03 01 D2 */	lha r0, 0x1d2(r3)
/* 809F18B0  48 00 00 18 */	b lbl_809F18C8
lbl_809F18B4:
/* 809F18B4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F18B8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F18BC  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F18C0  7C 63 02 14 */	add r3, r3, r0
/* 809F18C4  A8 03 FF 02 */	lha r0, -0xfe(r3)
lbl_809F18C8:
/* 809F18C8  7C 05 07 34 */	extsh r5, r0
/* 809F18CC  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F18D0  40 80 00 1C */	bge lbl_809F18EC
/* 809F18D4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F18D8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F18DC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F18E0  7C 63 02 14 */	add r3, r3, r0
/* 809F18E4  A8 03 01 D0 */	lha r0, 0x1d0(r3)
/* 809F18E8  48 00 00 18 */	b lbl_809F1900
lbl_809F18EC:
/* 809F18EC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F18F0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F18F4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F18F8  7C 63 02 14 */	add r3, r3, r0
/* 809F18FC  A8 03 FF 00 */	lha r0, -0x100(r3)
lbl_809F1900:
/* 809F1900  7C 04 07 34 */	extsh r4, r0
/* 809F1904  38 61 00 30 */	addi r3, r1, 0x30
/* 809F1908  38 C0 00 00 */	li r6, 0
/* 809F190C  4B 87 5A E9 */	bl __ct__5csXyzFsss
/* 809F1910  80 01 00 30 */	lwz r0, 0x30(r1)
/* 809F1914  90 01 00 80 */	stw r0, 0x80(r1)
/* 809F1918  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 809F191C  B0 01 00 84 */	sth r0, 0x84(r1)
/* 809F1920  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1924  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1928  40 80 00 1C */	bge lbl_809F1944
/* 809F192C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1930  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1934  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1938  7C 63 02 14 */	add r3, r3, r0
/* 809F193C  A8 03 01 DA */	lha r0, 0x1da(r3)
/* 809F1940  48 00 00 18 */	b lbl_809F1958
lbl_809F1944:
/* 809F1944  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1948  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F194C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1950  7C 63 02 14 */	add r3, r3, r0
/* 809F1954  A8 03 FF 0A */	lha r0, -0xf6(r3)
lbl_809F1958:
/* 809F1958  7C 05 07 34 */	extsh r5, r0
/* 809F195C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1960  40 80 00 1C */	bge lbl_809F197C
/* 809F1964  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1968  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F196C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1970  7C 63 02 14 */	add r3, r3, r0
/* 809F1974  A8 03 01 D8 */	lha r0, 0x1d8(r3)
/* 809F1978  48 00 00 18 */	b lbl_809F1990
lbl_809F197C:
/* 809F197C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1980  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1984  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1988  7C 63 02 14 */	add r3, r3, r0
/* 809F198C  A8 03 FF 08 */	lha r0, -0xf8(r3)
lbl_809F1990:
/* 809F1990  7C 04 07 34 */	extsh r4, r0
/* 809F1994  38 61 00 28 */	addi r3, r1, 0x28
/* 809F1998  38 C0 00 00 */	li r6, 0
/* 809F199C  4B 87 5A 59 */	bl __ct__5csXyzFsss
/* 809F19A0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 809F19A4  90 01 00 86 */	stw r0, 0x86(r1)
/* 809F19A8  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 809F19AC  B0 01 00 8A */	sth r0, 0x8a(r1)
/* 809F19B0  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F19B4  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F19B8  40 80 00 1C */	bge lbl_809F19D4
/* 809F19BC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F19C0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F19C4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F19C8  7C 63 02 14 */	add r3, r3, r0
/* 809F19CC  A8 03 01 E2 */	lha r0, 0x1e2(r3)
/* 809F19D0  48 00 00 18 */	b lbl_809F19E8
lbl_809F19D4:
/* 809F19D4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F19D8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F19DC  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F19E0  7C 63 02 14 */	add r3, r3, r0
/* 809F19E4  A8 03 FF 12 */	lha r0, -0xee(r3)
lbl_809F19E8:
/* 809F19E8  7C 05 07 34 */	extsh r5, r0
/* 809F19EC  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F19F0  40 80 00 1C */	bge lbl_809F1A0C
/* 809F19F4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F19F8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F19FC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1A00  7C 63 02 14 */	add r3, r3, r0
/* 809F1A04  A8 03 01 E0 */	lha r0, 0x1e0(r3)
/* 809F1A08  48 00 00 18 */	b lbl_809F1A20
lbl_809F1A0C:
/* 809F1A0C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1A10  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1A14  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1A18  7C 63 02 14 */	add r3, r3, r0
/* 809F1A1C  A8 03 FF 10 */	lha r0, -0xf0(r3)
lbl_809F1A20:
/* 809F1A20  7C 04 07 34 */	extsh r4, r0
/* 809F1A24  38 61 00 20 */	addi r3, r1, 0x20
/* 809F1A28  38 C0 00 00 */	li r6, 0
/* 809F1A2C  4B 87 59 C9 */	bl __ct__5csXyzFsss
/* 809F1A30  80 01 00 20 */	lwz r0, 0x20(r1)
/* 809F1A34  90 01 00 8C */	stw r0, 0x8c(r1)
/* 809F1A38  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 809F1A3C  B0 01 00 90 */	sth r0, 0x90(r1)
/* 809F1A40  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1A44  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1A48  40 80 00 1C */	bge lbl_809F1A64
/* 809F1A4C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1A50  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1A54  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1A58  7C 63 02 14 */	add r3, r3, r0
/* 809F1A5C  A8 03 01 D6 */	lha r0, 0x1d6(r3)
/* 809F1A60  48 00 00 18 */	b lbl_809F1A78
lbl_809F1A64:
/* 809F1A64  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1A68  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1A6C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1A70  7C 63 02 14 */	add r3, r3, r0
/* 809F1A74  A8 03 FF 06 */	lha r0, -0xfa(r3)
lbl_809F1A78:
/* 809F1A78  7C 05 07 34 */	extsh r5, r0
/* 809F1A7C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1A80  40 80 00 1C */	bge lbl_809F1A9C
/* 809F1A84  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1A88  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1A8C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1A90  7C 63 02 14 */	add r3, r3, r0
/* 809F1A94  A8 03 01 D4 */	lha r0, 0x1d4(r3)
/* 809F1A98  48 00 00 18 */	b lbl_809F1AB0
lbl_809F1A9C:
/* 809F1A9C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1AA0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1AA4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1AA8  7C 63 02 14 */	add r3, r3, r0
/* 809F1AAC  A8 03 FF 04 */	lha r0, -0xfc(r3)
lbl_809F1AB0:
/* 809F1AB0  7C 04 07 34 */	extsh r4, r0
/* 809F1AB4  38 61 00 18 */	addi r3, r1, 0x18
/* 809F1AB8  38 C0 00 00 */	li r6, 0
/* 809F1ABC  4B 87 59 39 */	bl __ct__5csXyzFsss
/* 809F1AC0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 809F1AC4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809F1AC8  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 809F1ACC  B0 01 00 70 */	sth r0, 0x70(r1)
/* 809F1AD0  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1AD4  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1AD8  40 80 00 1C */	bge lbl_809F1AF4
/* 809F1ADC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1AE0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1AE4  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1AE8  7C 63 02 14 */	add r3, r3, r0
/* 809F1AEC  A8 03 01 DE */	lha r0, 0x1de(r3)
/* 809F1AF0  48 00 00 18 */	b lbl_809F1B08
lbl_809F1AF4:
/* 809F1AF4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1AF8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1AFC  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1B00  7C 63 02 14 */	add r3, r3, r0
/* 809F1B04  A8 03 FF 0E */	lha r0, -0xf2(r3)
lbl_809F1B08:
/* 809F1B08  7C 05 07 34 */	extsh r5, r0
/* 809F1B0C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1B10  40 80 00 1C */	bge lbl_809F1B2C
/* 809F1B14  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1B18  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1B1C  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1B20  7C 63 02 14 */	add r3, r3, r0
/* 809F1B24  A8 03 01 DC */	lha r0, 0x1dc(r3)
/* 809F1B28  48 00 00 18 */	b lbl_809F1B40
lbl_809F1B2C:
/* 809F1B2C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1B30  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1B34  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1B38  7C 63 02 14 */	add r3, r3, r0
/* 809F1B3C  A8 03 FF 0C */	lha r0, -0xf4(r3)
lbl_809F1B40:
/* 809F1B40  7C 04 07 34 */	extsh r4, r0
/* 809F1B44  38 61 00 10 */	addi r3, r1, 0x10
/* 809F1B48  38 C0 00 00 */	li r6, 0
/* 809F1B4C  4B 87 58 A9 */	bl __ct__5csXyzFsss
/* 809F1B50  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809F1B54  90 01 00 72 */	stw r0, 0x72(r1)
/* 809F1B58  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 809F1B5C  B0 01 00 76 */	sth r0, 0x76(r1)
/* 809F1B60  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1B64  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1B68  40 80 00 1C */	bge lbl_809F1B84
/* 809F1B6C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1B70  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1B74  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1B78  7C 63 02 14 */	add r3, r3, r0
/* 809F1B7C  A8 03 01 E6 */	lha r0, 0x1e6(r3)
/* 809F1B80  48 00 00 18 */	b lbl_809F1B98
lbl_809F1B84:
/* 809F1B84  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1B88  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1B8C  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1B90  7C 63 02 14 */	add r3, r3, r0
/* 809F1B94  A8 03 FF 16 */	lha r0, -0xea(r3)
lbl_809F1B98:
/* 809F1B98  7C 05 07 34 */	extsh r5, r0
/* 809F1B9C  2C 04 00 10 */	cmpwi r4, 0x10
/* 809F1BA0  40 80 00 1C */	bge lbl_809F1BBC
/* 809F1BA4  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1BA8  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1BAC  1C 04 02 0C */	mulli r0, r4, 0x20c
/* 809F1BB0  7C 63 02 14 */	add r3, r3, r0
/* 809F1BB4  A8 03 01 E4 */	lha r0, 0x1e4(r3)
/* 809F1BB8  48 00 00 18 */	b lbl_809F1BD0
lbl_809F1BBC:
/* 809F1BBC  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 809F1BC0  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 809F1BC4  1C 04 02 3C */	mulli r0, r4, 0x23c
/* 809F1BC8  7C 63 02 14 */	add r3, r3, r0
/* 809F1BCC  A8 03 FF 14 */	lha r0, -0xec(r3)
lbl_809F1BD0:
/* 809F1BD0  7C 04 07 34 */	extsh r4, r0
/* 809F1BD4  38 61 00 08 */	addi r3, r1, 8
/* 809F1BD8  38 C0 00 00 */	li r6, 0
/* 809F1BDC  4B 87 58 19 */	bl __ct__5csXyzFsss
/* 809F1BE0  80 01 00 08 */	lwz r0, 8(r1)
/* 809F1BE4  90 01 00 78 */	stw r0, 0x78(r1)
/* 809F1BE8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 809F1BEC  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 809F1BF0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 809F1BF4  3B C3 0C F4 */	addi r30, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 809F1BF8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 809F1BFC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809F1C00  C0 1E 00 04 */	lfs f0, 4(r30)
/* 809F1C04  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809F1C08  C0 1E 00 08 */	lfs f0, 8(r30)
/* 809F1C0C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809F1C10  7F E3 FB 78 */	mr r3, r31
/* 809F1C14  4B 76 64 95 */	bl isM___10daNpcCd2_cFv
/* 809F1C18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F1C1C  41 82 00 28 */	beq lbl_809F1C44
/* 809F1C20  38 00 00 01 */	li r0, 1
/* 809F1C24  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809F1C28  38 00 00 02 */	li r0, 2
/* 809F1C2C  90 01 00 60 */	stw r0, 0x60(r1)
/* 809F1C30  38 00 00 03 */	li r0, 3
/* 809F1C34  90 01 00 64 */	stw r0, 0x64(r1)
/* 809F1C38  38 00 FF FF */	li r0, -1
/* 809F1C3C  90 01 00 68 */	stw r0, 0x68(r1)
/* 809F1C40  48 00 00 24 */	b lbl_809F1C64
lbl_809F1C44:
/* 809F1C44  38 00 00 01 */	li r0, 1
/* 809F1C48  90 01 00 5C */	stw r0, 0x5c(r1)
/* 809F1C4C  38 00 00 02 */	li r0, 2
/* 809F1C50  90 01 00 60 */	stw r0, 0x60(r1)
/* 809F1C54  38 00 00 03 */	li r0, 3
/* 809F1C58  90 01 00 64 */	stw r0, 0x64(r1)
/* 809F1C5C  38 00 FF FF */	li r0, -1
/* 809F1C60  90 01 00 68 */	stw r0, 0x68(r1)
lbl_809F1C64:
/* 809F1C64  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1C68  80 83 00 04 */	lwz r4, 4(r3)
/* 809F1C6C  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 809F1C70  38 A1 00 5C */	addi r5, r1, 0x5c
/* 809F1C74  38 C1 00 80 */	addi r6, r1, 0x80
/* 809F1C78  38 E1 00 6C */	addi r7, r1, 0x6c
/* 809F1C7C  4B 85 F7 91 */	bl init__16dNpcLib_lookat_cFP8J3DModelPiP5csXyzP5csXyz
/* 809F1C80  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 809F1C84  4B 75 3A 85 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809F1C88  28 03 00 00 */	cmplwi r3, 0
/* 809F1C8C  41 82 00 3C */	beq lbl_809F1CC8
/* 809F1C90  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1C94  80 63 00 04 */	lwz r3, 4(r3)
/* 809F1C98  38 63 00 24 */	addi r3, r3, 0x24
/* 809F1C9C  38 81 00 94 */	addi r4, r1, 0x94
/* 809F1CA0  4B 95 48 11 */	bl PSMTXCopy
/* 809F1CA4  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 809F1CA8  4B 75 3A 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809F1CAC  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 809F1CB0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809F1CB4  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 809F1CB8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809F1CBC  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 809F1CC0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809F1CC4  48 00 00 34 */	b lbl_809F1CF8
lbl_809F1CC8:
/* 809F1CC8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1CCC  80 63 00 04 */	lwz r3, 4(r3)
/* 809F1CD0  38 63 00 24 */	addi r3, r3, 0x24
/* 809F1CD4  38 81 00 94 */	addi r4, r1, 0x94
/* 809F1CD8  4B 95 47 D9 */	bl PSMTXCopy
/* 809F1CDC  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 809F1CE0  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 809F1CE4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809F1CE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 809F1CEC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809F1CF0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 809F1CF4  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_809F1CF8:
/* 809F1CF8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 809F1CFC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809F1D00  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 809F1D04  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809F1D08  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 809F1D0C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809F1D10  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 809F1D14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809F1D18  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 809F1D1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809F1D20  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 809F1D24  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809F1D28  38 7F 0B 00 */	addi r3, r31, 0xb00
/* 809F1D2C  4B 75 39 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809F1D30  30 03 FF FF */	addic r0, r3, -1
/* 809F1D34  7C 00 19 10 */	subfe r0, r0, r3
/* 809F1D38  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 809F1D3C  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 809F1D40  38 81 00 44 */	addi r4, r1, 0x44
/* 809F1D44  38 A1 00 38 */	addi r5, r1, 0x38
/* 809F1D48  7F E6 FB 78 */	mr r6, r31
/* 809F1D4C  38 E1 00 94 */	addi r7, r1, 0x94
/* 809F1D50  4B 85 F7 E5 */	bl action__16dNpcLib_lookat_cF4cXyz4cXyzP10fopAc_ac_cPA4_fi
/* 809F1D54  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 809F1D58  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 809F1D5C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 809F1D60  7C 08 03 A6 */	mtlr r0
/* 809F1D64  38 21 00 D0 */	addi r1, r1, 0xd0
/* 809F1D68  4E 80 00 20 */	blr 
