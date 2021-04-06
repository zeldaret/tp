lbl_804E18CC:
/* 804E18CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E18D0  7C 08 02 A6 */	mflr r0
/* 804E18D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E18D8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804E18DC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804E18E0  3C 60 80 4E */	lis r3, lit_1109@ha /* 0x804E1BE8@ha */
/* 804E18E4  3B C3 1B E8 */	addi r30, r3, lit_1109@l /* 0x804E1BE8@l */
/* 804E18E8  3C 60 80 4E */	lis r3, l_light_color@ha /* 0x804E19D4@ha */
/* 804E18EC  3B E3 19 D4 */	addi r31, r3, l_light_color@l /* 0x804E19D4@l */
/* 804E18F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E18F4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804E18F8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 804E18FC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E1900  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804E1904  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E1908  D0 5E 00 4C */	stfs f2, 0x4c(r30)
/* 804E190C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 804E1910  D0 23 00 04 */	stfs f1, 4(r3)
/* 804E1914  D0 03 00 08 */	stfs f0, 8(r3)
/* 804E1918  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha /* 0x804E00A0@ha */
/* 804E191C  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804E00A0@l */
/* 804E1920  38 BE 00 40 */	addi r5, r30, 0x40
/* 804E1924  4B FF E2 35 */	bl __register_global_object
/* 804E1928  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 804E192C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804E1930  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E1934  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804E1938  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804E193C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E1940  D0 5E 00 64 */	stfs f2, 0x64(r30)
/* 804E1944  38 7E 00 64 */	addi r3, r30, 0x64
/* 804E1948  D0 23 00 04 */	stfs f1, 4(r3)
/* 804E194C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804E1950  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha /* 0x804E00A0@ha */
/* 804E1954  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804E00A0@l */
/* 804E1958  38 BE 00 58 */	addi r5, r30, 0x58
/* 804E195C  4B FF E1 FD */	bl __register_global_object
/* 804E1960  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E1964  D0 41 00 08 */	stfs f2, 8(r1)
/* 804E1968  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804E196C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E1970  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804E1974  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E1978  D0 5E 00 7C */	stfs f2, 0x7c(r30)
/* 804E197C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 804E1980  D0 23 00 04 */	stfs f1, 4(r3)
/* 804E1984  D0 03 00 08 */	stfs f0, 8(r3)
/* 804E1988  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha /* 0x804E00A0@ha */
/* 804E198C  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804E00A0@l */
/* 804E1990  38 BE 00 70 */	addi r5, r30, 0x70
/* 804E1994  4B FF E1 C5 */	bl __register_global_object
/* 804E1998  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804E199C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804E19A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E19A4  7C 08 03 A6 */	mtlr r0
/* 804E19A8  38 21 00 40 */	addi r1, r1, 0x40
/* 804E19AC  4E 80 00 20 */	blr 
