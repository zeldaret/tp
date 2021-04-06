lbl_80AB1938:
/* 80AB1938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB193C  7C 08 02 A6 */	mflr r0
/* 80AB1940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB1948  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB194C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB1950  7C 9F 23 78 */	mr r31, r4
/* 80AB1954  41 82 00 38 */	beq lbl_80AB198C
/* 80AB1958  3C 80 80 AB */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AB2B84@ha */
/* 80AB195C  38 84 2B 84 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AB2B84@l */
/* 80AB1960  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AB1964  38 04 00 0C */	addi r0, r4, 0xc
/* 80AB1968  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AB196C  38 04 00 18 */	addi r0, r4, 0x18
/* 80AB1970  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AB1974  38 80 00 00 */	li r4, 0
/* 80AB1978  4B 5C 46 1D */	bl __dt__9dBgS_AcchFv
/* 80AB197C  7F E0 07 35 */	extsh. r0, r31
/* 80AB1980  40 81 00 0C */	ble lbl_80AB198C
/* 80AB1984  7F C3 F3 78 */	mr r3, r30
/* 80AB1988  4B 81 D3 B5 */	bl __dl__FPv
lbl_80AB198C:
/* 80AB198C  7F C3 F3 78 */	mr r3, r30
/* 80AB1990  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1994  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB1998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB199C  7C 08 03 A6 */	mtlr r0
/* 80AB19A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB19A4  4E 80 00 20 */	blr 
