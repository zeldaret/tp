lbl_80CA1904:
/* 80CA1904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CA1908  7C 08 02 A6 */	mflr r0
/* 80CA190C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CA1910  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CA1914  7C 7F 1B 78 */	mr r31, r3
/* 80CA1918  80 03 07 D0 */	lwz r0, 0x7d0(r3)
/* 80CA191C  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1920  40 82 00 28 */	bne lbl_80CA1948
/* 80CA1924  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80CA1928  60 00 40 00 */	ori r0, r0, 0x4000
/* 80CA192C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80CA1930  38 00 00 00 */	li r0, 0
/* 80CA1934  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80CA1938  80 7F 07 D0 */	lwz r3, 0x7d0(r31)
/* 80CA193C  38 03 00 01 */	addi r0, r3, 1
/* 80CA1940  90 1F 07 D0 */	stw r0, 0x7d0(r31)
/* 80CA1944  48 00 00 C8 */	b lbl_80CA1A0C
lbl_80CA1948:
/* 80CA1948  2C 00 FF FF */	cmpwi r0, -1
/* 80CA194C  41 82 00 C0 */	beq lbl_80CA1A0C
/* 80CA1950  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80CA1954  28 00 00 00 */	cmplwi r0, 0
/* 80CA1958  41 82 00 B4 */	beq lbl_80CA1A0C
/* 80CA195C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA1960  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA1964  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80CA1968  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80CA196C  38 03 C0 00 */	addi r0, r3, -16384
/* 80CA1970  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80CA1974  3C 60 80 CA */	lis r3, d_a_obj_nan__stringBase0@ha /* 0x80CA32A0@ha */
/* 80CA1978  38 63 32 A0 */	addi r3, r3, d_a_obj_nan__stringBase0@l /* 0x80CA32A0@l */
/* 80CA197C  38 63 00 06 */	addi r3, r3, 6
/* 80CA1980  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80CA1984  4B 6C 70 11 */	bl strcmp
/* 80CA1988  2C 03 00 00 */	cmpwi r3, 0
/* 80CA198C  40 82 00 54 */	bne lbl_80CA19E0
/* 80CA1990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA1994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA1998  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80CA199C  2C 00 00 03 */	cmpwi r0, 3
/* 80CA19A0  40 82 00 40 */	bne lbl_80CA19E0
/* 80CA19A4  38 00 00 01 */	li r0, 1
/* 80CA19A8  98 1F 07 FA */	stb r0, 0x7fa(r31)
/* 80CA19AC  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80CA19B0  3C 60 80 CA */	lis r3, lit_4318@ha /* 0x80CA3358@ha */
/* 80CA19B4  38 83 33 58 */	addi r4, r3, lit_4318@l /* 0x80CA3358@l */
/* 80CA19B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA19BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA19C0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80CA19C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CA19C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA19CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CA19D0  7F E3 FB 78 */	mr r3, r31
/* 80CA19D4  38 81 00 14 */	addi r4, r1, 0x14
/* 80CA19D8  4B FF EB FD */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
/* 80CA19DC  48 00 00 30 */	b lbl_80CA1A0C
lbl_80CA19E0:
/* 80CA19E0  3C 60 80 CA */	lis r3, lit_4321@ha /* 0x80CA3364@ha */
/* 80CA19E4  38 83 33 64 */	addi r4, r3, lit_4321@l /* 0x80CA3364@l */
/* 80CA19E8  80 64 00 00 */	lwz r3, 0(r4)
/* 80CA19EC  80 04 00 04 */	lwz r0, 4(r4)
/* 80CA19F0  90 61 00 08 */	stw r3, 8(r1)
/* 80CA19F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA19F8  80 04 00 08 */	lwz r0, 8(r4)
/* 80CA19FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA1A00  7F E3 FB 78 */	mr r3, r31
/* 80CA1A04  38 81 00 08 */	addi r4, r1, 8
/* 80CA1A08  4B FF EB CD */	bl setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v
lbl_80CA1A0C:
/* 80CA1A0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CA1A10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CA1A14  7C 08 03 A6 */	mtlr r0
/* 80CA1A18  38 21 00 30 */	addi r1, r1, 0x30
/* 80CA1A1C  4E 80 00 20 */	blr 
