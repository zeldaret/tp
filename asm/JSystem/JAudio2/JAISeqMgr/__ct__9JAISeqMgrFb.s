lbl_802A1914:
/* 802A1914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1918  7C 08 02 A6 */	mflr r0
/* 802A191C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1924  7C 7F 1B 78 */	mr r31, r3
/* 802A1928  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A192C  41 82 00 08 */	beq lbl_802A1934
/* 802A1930  93 ED 85 E8 */	stw r31, __OSReport_disable-0x30(r13)
lbl_802A1934:
/* 802A1934  3C 60 80 3D */	lis r3, __vt__14JAISeqDataUser@ha /* 0x803C9940@ha */
/* 802A1938  38 03 99 40 */	addi r0, r3, __vt__14JAISeqDataUser@l /* 0x803C9940@l */
/* 802A193C  90 1F 00 00 */	stw r0, 0(r31)
/* 802A1940  3C 60 80 3D */	lis r3, __vt__9JAISeqMgr@ha /* 0x803C9958@ha */
/* 802A1944  38 03 99 58 */	addi r0, r3, __vt__9JAISeqMgr@l /* 0x803C9958@l */
/* 802A1948  90 1F 00 00 */	stw r0, 0(r31)
/* 802A194C  38 00 00 00 */	li r0, 0
/* 802A1950  90 1F 00 08 */	stw r0, 8(r31)
/* 802A1954  C0 02 BD A8 */	lfs f0, lit_691(r2)
/* 802A1958  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802A195C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 802A1960  C0 22 BD AC */	lfs f1, lit_692(r2)
/* 802A1964  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802A1968  C0 02 BD B0 */	lfs f0, lit_693(r2)
/* 802A196C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 802A1970  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802A1974  38 7F 00 64 */	addi r3, r31, 0x64
/* 802A1978  48 03 A5 9D */	bl initiate__10JSUPtrListFv
/* 802A197C  38 60 00 00 */	li r3, 0
/* 802A1980  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802A1984  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802A1988  38 00 00 10 */	li r0, 0x10
/* 802A198C  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802A1990  C0 02 BD A8 */	lfs f0, lit_691(r2)
/* 802A1994  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802A1998  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 802A199C  C0 22 BD AC */	lfs f1, lit_692(r2)
/* 802A19A0  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802A19A4  C0 02 BD B0 */	lfs f0, lit_693(r2)
/* 802A19A8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 802A19AC  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802A19B0  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 802A19B4  90 7F 00 30 */	stw r3, 0x30(r31)
/* 802A19B8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802A19BC  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802A19C0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 802A19C4  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 802A19C8  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 802A19CC  90 7F 00 48 */	stw r3, 0x48(r31)
/* 802A19D0  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 802A19D4  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 802A19D8  90 7F 00 54 */	stw r3, 0x54(r31)
/* 802A19DC  D0 3F 00 50 */	stfs f1, 0x50(r31)
/* 802A19E0  D0 3F 00 58 */	stfs f1, 0x58(r31)
/* 802A19E4  90 7F 00 60 */	stw r3, 0x60(r31)
/* 802A19E8  D0 3F 00 5C */	stfs f1, 0x5c(r31)
/* 802A19EC  98 7F 00 04 */	stb r3, 4(r31)
/* 802A19F0  7F E3 FB 78 */	mr r3, r31
/* 802A19F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A19F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A19FC  7C 08 03 A6 */	mtlr r0
/* 802A1A00  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1A04  4E 80 00 20 */	blr 
