lbl_807E2124:
/* 807E2124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2128  7C 08 02 A6 */	mflr r0
/* 807E212C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E2130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E2134  93 C1 00 08 */	stw r30, 8(r1)
/* 807E2138  3C 60 80 7E */	lis r3, lit_1109@ha
/* 807E213C  3B C3 35 78 */	addi r30, r3, lit_1109@l
/* 807E2140  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807E2144  3B E3 29 8C */	addi r31, r3, lit_3882@l
/* 807E2148  38 7E 00 50 */	addi r3, r30, 0x50
/* 807E214C  4B FF 03 41 */	bl __ct__12daE_WB_HIO_cFv
/* 807E2150  3C 80 80 7E */	lis r4, __dt__12daE_WB_HIO_cFv@ha
/* 807E2154  38 84 20 DC */	addi r4, r4, __dt__12daE_WB_HIO_cFv@l
/* 807E2158  38 BE 00 44 */	addi r5, r30, 0x44
/* 807E215C  4B FF 02 BD */	bl __register_global_object
/* 807E2160  38 7E 00 B8 */	addi r3, r30, 0xb8
/* 807E2164  3C 80 80 7E */	lis r4, __ct__4cXyzFv@ha
/* 807E2168  38 84 24 FC */	addi r4, r4, __ct__4cXyzFv@l
/* 807E216C  3C A0 80 7D */	lis r5, __dt__4cXyzFv@ha
/* 807E2170  38 A5 2B 48 */	addi r5, r5, __dt__4cXyzFv@l
/* 807E2174  38 C0 00 0C */	li r6, 0xc
/* 807E2178  38 E0 00 08 */	li r7, 8
/* 807E217C  4B B7 FB E4 */	b __construct_array
/* 807E2180  38 60 00 00 */	li r3, 0
/* 807E2184  3C 80 80 7E */	lis r4, __arraydtor_4745@ha
/* 807E2188  38 84 22 70 */	addi r4, r4, __arraydtor_4745@l
/* 807E218C  38 BE 00 AC */	addi r5, r30, 0xac
/* 807E2190  4B FF 02 89 */	bl __register_global_object
/* 807E2194  38 7E 01 24 */	addi r3, r30, 0x124
/* 807E2198  3C 80 80 7E */	lis r4, __ct__4cXyzFv@ha
/* 807E219C  38 84 24 FC */	addi r4, r4, __ct__4cXyzFv@l
/* 807E21A0  3C A0 80 7D */	lis r5, __dt__4cXyzFv@ha
/* 807E21A4  38 A5 2B 48 */	addi r5, r5, __dt__4cXyzFv@l
/* 807E21A8  38 C0 00 0C */	li r6, 0xc
/* 807E21AC  38 E0 00 08 */	li r7, 8
/* 807E21B0  4B B7 FB B0 */	b __construct_array
/* 807E21B4  38 60 00 00 */	li r3, 0
/* 807E21B8  3C 80 80 7E */	lis r4, __arraydtor_5742@ha
/* 807E21BC  38 84 22 38 */	addi r4, r4, __arraydtor_5742@l
/* 807E21C0  38 BE 01 18 */	addi r5, r30, 0x118
/* 807E21C4  4B FF 02 55 */	bl __register_global_object
/* 807E21C8  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 807E21CC  D0 1E 01 AC */	stfs f0, 0x1ac(r30)
/* 807E21D0  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807E21D4  38 7E 01 AC */	addi r3, r30, 0x1ac
/* 807E21D8  D0 03 00 04 */	stfs f0, 4(r3)
/* 807E21DC  C0 1F 05 7C */	lfs f0, 0x57c(r31)
/* 807E21E0  D0 03 00 08 */	stfs f0, 8(r3)
/* 807E21E4  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807E21E8  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807E21EC  38 BE 01 A0 */	addi r5, r30, 0x1a0
/* 807E21F0  4B FF 02 29 */	bl __register_global_object
/* 807E21F4  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 807E21F8  D0 1E 01 C4 */	stfs f0, 0x1c4(r30)
/* 807E21FC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807E2200  38 7E 01 C4 */	addi r3, r30, 0x1c4
/* 807E2204  D0 03 00 04 */	stfs f0, 4(r3)
/* 807E2208  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 807E220C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807E2210  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha
/* 807E2214  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l
/* 807E2218  38 BE 01 B8 */	addi r5, r30, 0x1b8
/* 807E221C  4B FF 01 FD */	bl __register_global_object
/* 807E2220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E2224  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E2228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E222C  7C 08 03 A6 */	mtlr r0
/* 807E2230  38 21 00 10 */	addi r1, r1, 0x10
/* 807E2234  4E 80 00 20 */	blr 
