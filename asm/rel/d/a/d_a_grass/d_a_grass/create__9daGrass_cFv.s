lbl_8051C304:
/* 8051C304  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 8051C308  7C 08 02 A6 */	mflr r0
/* 8051C30C  90 01 02 84 */	stw r0, 0x284(r1)
/* 8051C310  DB E1 02 70 */	stfd f31, 0x270(r1)
/* 8051C314  F3 E1 02 78 */	psq_st f31, 632(r1), 0, 0 /* qr0 */
/* 8051C318  DB C1 02 60 */	stfd f30, 0x260(r1)
/* 8051C31C  F3 C1 02 68 */	psq_st f30, 616(r1), 0, 0 /* qr0 */
/* 8051C320  DB A1 02 50 */	stfd f29, 0x250(r1)
/* 8051C324  F3 A1 02 58 */	psq_st f29, 600(r1), 0, 0 /* qr0 */
/* 8051C328  39 61 02 50 */	addi r11, r1, 0x250
/* 8051C32C  4B E4 5E 95 */	bl _savegpr_22
/* 8051C330  7C 7E 1B 78 */	mr r30, r3
/* 8051C334  3C 60 80 52 */	lis r3, lit_1109@ha /* 0x805278D0@ha */
/* 8051C338  3B E3 78 D0 */	addi r31, r3, lit_1109@l /* 0x805278D0@l */
/* 8051C33C  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 8051C340  3B A3 30 28 */	addi r29, r3, lit_3999@l /* 0x80523028@l */
/* 8051C344  3C 60 80 53 */	lis r3, data_80528850@ha /* 0x80528850@ha */
/* 8051C348  88 03 88 50 */	lbz r0, data_80528850@l(r3)  /* 0x80528850@l */
/* 8051C34C  7C 00 07 75 */	extsb. r0, r0
/* 8051C350  40 82 01 B0 */	bne lbl_8051C500
/* 8051C354  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8051C358  38 80 00 00 */	li r4, 0
/* 8051C35C  38 A0 00 00 */	li r5, 0
/* 8051C360  38 C0 00 00 */	li r6, 0
/* 8051C364  4B D4 B0 91 */	bl __ct__5csXyzFsss
/* 8051C368  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C36C  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8051C370  94 03 88 54 */	stwu r0, struct_80528854+0x0@l(r3)  /* 0x80528854@l */
/* 8051C374  A0 01 01 F8 */	lhz r0, 0x1f8(r1)
/* 8051C378  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C37C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C380  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C384  38 BF 0C 34 */	addi r5, r31, 0xc34
/* 8051C388  4B FF F9 51 */	bl __register_global_object
/* 8051C38C  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8051C390  38 80 00 03 */	li r4, 3
/* 8051C394  38 A0 00 00 */	li r5, 0
/* 8051C398  38 C0 FF CE */	li r6, -50
/* 8051C39C  4B D4 B0 59 */	bl __ct__5csXyzFsss
/* 8051C3A0  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C3A4  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C3A8  80 01 01 EC */	lwz r0, 0x1ec(r1)
/* 8051C3AC  94 03 00 06 */	stwu r0, 6(r3)
/* 8051C3B0  A0 01 01 F0 */	lhz r0, 0x1f0(r1)
/* 8051C3B4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C3B8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C3BC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C3C0  38 BF 0C 40 */	addi r5, r31, 0xc40
/* 8051C3C4  4B FF F9 15 */	bl __register_global_object
/* 8051C3C8  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 8051C3CC  38 80 FF FE */	li r4, -2
/* 8051C3D0  38 A0 00 00 */	li r5, 0
/* 8051C3D4  38 C0 00 32 */	li r6, 0x32
/* 8051C3D8  4B D4 B0 1D */	bl __ct__5csXyzFsss
/* 8051C3DC  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C3E0  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C3E4  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 8051C3E8  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051C3EC  A0 01 01 E8 */	lhz r0, 0x1e8(r1)
/* 8051C3F0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C3F4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C3F8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C3FC  38 BF 0C 4C */	addi r5, r31, 0xc4c
/* 8051C400  4B FF F8 D9 */	bl __register_global_object
/* 8051C404  38 61 01 DC */	addi r3, r1, 0x1dc
/* 8051C408  38 80 00 32 */	li r4, 0x32
/* 8051C40C  38 A0 00 00 */	li r5, 0
/* 8051C410  38 C0 00 1B */	li r6, 0x1b
/* 8051C414  4B D4 AF E1 */	bl __ct__5csXyzFsss
/* 8051C418  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C41C  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C420  80 01 01 DC */	lwz r0, 0x1dc(r1)
/* 8051C424  94 03 00 12 */	stwu r0, 0x12(r3)
/* 8051C428  A0 01 01 E0 */	lhz r0, 0x1e0(r1)
/* 8051C42C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C430  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C434  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C438  38 BF 0C 58 */	addi r5, r31, 0xc58
/* 8051C43C  4B FF F8 9D */	bl __register_global_object
/* 8051C440  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8051C444  38 80 00 34 */	li r4, 0x34
/* 8051C448  38 A0 00 00 */	li r5, 0
/* 8051C44C  38 C0 FF E7 */	li r6, -25
/* 8051C450  4B D4 AF A5 */	bl __ct__5csXyzFsss
/* 8051C454  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C458  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C45C  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8051C460  94 03 00 18 */	stwu r0, 0x18(r3)
/* 8051C464  A0 01 01 D8 */	lhz r0, 0x1d8(r1)
/* 8051C468  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C46C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C470  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C474  38 BF 0C 64 */	addi r5, r31, 0xc64
/* 8051C478  4B FF F8 61 */	bl __register_global_object
/* 8051C47C  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8051C480  38 80 FF CE */	li r4, -50
/* 8051C484  38 A0 00 00 */	li r5, 0
/* 8051C488  38 C0 00 16 */	li r6, 0x16
/* 8051C48C  4B D4 AF 69 */	bl __ct__5csXyzFsss
/* 8051C490  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C494  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C498  80 01 01 CC */	lwz r0, 0x1cc(r1)
/* 8051C49C  94 03 00 1E */	stwu r0, 0x1e(r3)
/* 8051C4A0  A0 01 01 D0 */	lhz r0, 0x1d0(r1)
/* 8051C4A4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C4A8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C4AC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C4B0  38 BF 0C 70 */	addi r5, r31, 0xc70
/* 8051C4B4  4B FF F8 25 */	bl __register_global_object
/* 8051C4B8  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8051C4BC  38 80 FF CE */	li r4, -50
/* 8051C4C0  38 A0 00 00 */	li r5, 0
/* 8051C4C4  38 C0 FF E3 */	li r6, -29
/* 8051C4C8  4B D4 AF 2D */	bl __ct__5csXyzFsss
/* 8051C4CC  3C 60 80 53 */	lis r3, struct_80528854+0x0@ha /* 0x80528854@ha */
/* 8051C4D0  38 63 88 54 */	addi r3, r3, struct_80528854+0x0@l /* 0x80528854@l */
/* 8051C4D4  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 8051C4D8  94 03 00 24 */	stwu r0, 0x24(r3)
/* 8051C4DC  A0 01 01 C8 */	lhz r0, 0x1c8(r1)
/* 8051C4E0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C4E4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C4E8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C4EC  38 BF 0C 7C */	addi r5, r31, 0xc7c
/* 8051C4F0  4B FF F7 E9 */	bl __register_global_object
/* 8051C4F4  38 00 00 01 */	li r0, 1
/* 8051C4F8  3C 60 80 53 */	lis r3, data_80528850@ha /* 0x80528850@ha */
/* 8051C4FC  98 03 88 50 */	stb r0, data_80528850@l(r3)  /* 0x80528850@l */
lbl_8051C500:
/* 8051C500  3C 60 80 53 */	lis r3, struct_80528854+0x2A@ha /* 0x8052887E@ha */
/* 8051C504  88 03 88 7E */	lbz r0, struct_80528854+0x2A@l(r3)  /* 0x8052887E@l */
/* 8051C508  7C 00 07 75 */	extsb. r0, r0
/* 8051C50C  40 82 04 F8 */	bne lbl_8051CA04
/* 8051C510  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8051C514  38 80 FF EE */	li r4, -18
/* 8051C518  38 A0 00 00 */	li r5, 0
/* 8051C51C  38 C0 00 4C */	li r6, 0x4c
/* 8051C520  4B D4 AE D5 */	bl __ct__5csXyzFsss
/* 8051C524  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C528  80 01 01 BC */	lwz r0, 0x1bc(r1)
/* 8051C52C  94 03 88 80 */	stwu r0, struct_80528880+0x0@l(r3)  /* 0x80528880@l */
/* 8051C530  A0 01 01 C0 */	lhz r0, 0x1c0(r1)
/* 8051C534  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C538  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C53C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C540  38 BF 0C 88 */	addi r5, r31, 0xc88
/* 8051C544  4B FF F7 95 */	bl __register_global_object
/* 8051C548  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8051C54C  38 80 FF F1 */	li r4, -15
/* 8051C550  38 A0 00 00 */	li r5, 0
/* 8051C554  38 C0 00 1A */	li r6, 0x1a
/* 8051C558  4B D4 AE 9D */	bl __ct__5csXyzFsss
/* 8051C55C  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C560  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C564  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8051C568  94 03 00 06 */	stwu r0, 6(r3)
/* 8051C56C  A0 01 01 B8 */	lhz r0, 0x1b8(r1)
/* 8051C570  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C574  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C578  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C57C  38 BF 0C 94 */	addi r5, r31, 0xc94
/* 8051C580  4B FF F7 59 */	bl __register_global_object
/* 8051C584  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8051C588  38 80 00 85 */	li r4, 0x85
/* 8051C58C  38 A0 00 00 */	li r5, 0
/* 8051C590  38 C0 00 00 */	li r6, 0
/* 8051C594  4B D4 AE 61 */	bl __ct__5csXyzFsss
/* 8051C598  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C59C  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C5A0  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 8051C5A4  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051C5A8  A0 01 01 B0 */	lhz r0, 0x1b0(r1)
/* 8051C5AC  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C5B0  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C5B4  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C5B8  38 BF 0C A0 */	addi r5, r31, 0xca0
/* 8051C5BC  4B FF F7 1D */	bl __register_global_object
/* 8051C5C0  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8051C5C4  38 80 00 50 */	li r4, 0x50
/* 8051C5C8  38 A0 00 00 */	li r5, 0
/* 8051C5CC  38 C0 00 17 */	li r6, 0x17
/* 8051C5D0  4B D4 AE 25 */	bl __ct__5csXyzFsss
/* 8051C5D4  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C5D8  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C5DC  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 8051C5E0  94 03 00 12 */	stwu r0, 0x12(r3)
/* 8051C5E4  A0 01 01 A8 */	lhz r0, 0x1a8(r1)
/* 8051C5E8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C5EC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C5F0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C5F4  38 BF 0C AC */	addi r5, r31, 0xcac
/* 8051C5F8  4B FF F6 E1 */	bl __register_global_object
/* 8051C5FC  38 61 01 9C */	addi r3, r1, 0x19c
/* 8051C600  38 80 00 56 */	li r4, 0x56
/* 8051C604  38 A0 00 00 */	li r5, 0
/* 8051C608  38 C0 FF AD */	li r6, -83
/* 8051C60C  4B D4 AD E9 */	bl __ct__5csXyzFsss
/* 8051C610  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C614  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C618  80 01 01 9C */	lwz r0, 0x19c(r1)
/* 8051C61C  94 03 00 18 */	stwu r0, 0x18(r3)
/* 8051C620  A0 01 01 A0 */	lhz r0, 0x1a0(r1)
/* 8051C624  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C628  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C62C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C630  38 BF 0C B8 */	addi r5, r31, 0xcb8
/* 8051C634  4B FF F6 A5 */	bl __register_global_object
/* 8051C638  38 61 01 94 */	addi r3, r1, 0x194
/* 8051C63C  38 80 00 21 */	li r4, 0x21
/* 8051C640  38 A0 00 00 */	li r5, 0
/* 8051C644  38 C0 FF C8 */	li r6, -56
/* 8051C648  4B D4 AD AD */	bl __ct__5csXyzFsss
/* 8051C64C  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C650  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C654  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8051C658  94 03 00 1E */	stwu r0, 0x1e(r3)
/* 8051C65C  A0 01 01 98 */	lhz r0, 0x198(r1)
/* 8051C660  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C664  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C668  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C66C  38 BF 0C C4 */	addi r5, r31, 0xcc4
/* 8051C670  4B FF F6 69 */	bl __register_global_object
/* 8051C674  38 61 01 8C */	addi r3, r1, 0x18c
/* 8051C678  38 80 00 53 */	li r4, 0x53
/* 8051C67C  38 A0 00 00 */	li r5, 0
/* 8051C680  38 C0 FF E5 */	li r6, -27
/* 8051C684  4B D4 AD 71 */	bl __ct__5csXyzFsss
/* 8051C688  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C68C  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C690  80 01 01 8C */	lwz r0, 0x18c(r1)
/* 8051C694  94 03 00 24 */	stwu r0, 0x24(r3)
/* 8051C698  A0 01 01 90 */	lhz r0, 0x190(r1)
/* 8051C69C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C6A0  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C6A4  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C6A8  38 BF 0C D0 */	addi r5, r31, 0xcd0
/* 8051C6AC  4B FF F6 2D */	bl __register_global_object
/* 8051C6B0  38 61 01 84 */	addi r3, r1, 0x184
/* 8051C6B4  38 80 FF 88 */	li r4, -120
/* 8051C6B8  38 A0 00 00 */	li r5, 0
/* 8051C6BC  38 C0 FF E6 */	li r6, -26
/* 8051C6C0  4B D4 AD 35 */	bl __ct__5csXyzFsss
/* 8051C6C4  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C6C8  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C6CC  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8051C6D0  94 03 00 2A */	stwu r0, 0x2a(r3)
/* 8051C6D4  A0 01 01 88 */	lhz r0, 0x188(r1)
/* 8051C6D8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C6DC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C6E0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C6E4  38 BF 0C DC */	addi r5, r31, 0xcdc
/* 8051C6E8  4B FF F5 F1 */	bl __register_global_object
/* 8051C6EC  38 61 01 7C */	addi r3, r1, 0x17c
/* 8051C6F0  38 80 FF EE */	li r4, -18
/* 8051C6F4  38 A0 00 00 */	li r5, 0
/* 8051C6F8  38 C0 FF B6 */	li r6, -74
/* 8051C6FC  4B D4 AC F9 */	bl __ct__5csXyzFsss
/* 8051C700  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C704  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C708  80 01 01 7C */	lwz r0, 0x17c(r1)
/* 8051C70C  94 03 00 30 */	stwu r0, 0x30(r3)
/* 8051C710  A0 01 01 80 */	lhz r0, 0x180(r1)
/* 8051C714  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C718  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C71C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C720  38 BF 0C E8 */	addi r5, r31, 0xce8
/* 8051C724  4B FF F5 B5 */	bl __register_global_object
/* 8051C728  38 61 01 74 */	addi r3, r1, 0x174
/* 8051C72C  38 80 FF EC */	li r4, -20
/* 8051C730  38 A0 00 00 */	li r5, 0
/* 8051C734  38 C0 FF EB */	li r6, -21
/* 8051C738  4B D4 AC BD */	bl __ct__5csXyzFsss
/* 8051C73C  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C740  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C744  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8051C748  94 03 00 36 */	stwu r0, 0x36(r3)
/* 8051C74C  A0 01 01 78 */	lhz r0, 0x178(r1)
/* 8051C750  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C754  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C758  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C75C  38 BF 0C F4 */	addi r5, r31, 0xcf4
/* 8051C760  4B FF F5 79 */	bl __register_global_object
/* 8051C764  38 61 01 6C */	addi r3, r1, 0x16c
/* 8051C768  38 80 FF B7 */	li r4, -73
/* 8051C76C  38 A0 00 00 */	li r5, 0
/* 8051C770  38 C0 00 01 */	li r6, 1
/* 8051C774  4B D4 AC 81 */	bl __ct__5csXyzFsss
/* 8051C778  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C77C  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C780  80 01 01 6C */	lwz r0, 0x16c(r1)
/* 8051C784  94 03 00 3C */	stwu r0, 0x3c(r3)
/* 8051C788  A0 01 01 70 */	lhz r0, 0x170(r1)
/* 8051C78C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C790  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C794  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C798  38 BF 0D 00 */	addi r5, r31, 0xd00
/* 8051C79C  4B FF F5 3D */	bl __register_global_object
/* 8051C7A0  38 61 01 64 */	addi r3, r1, 0x164
/* 8051C7A4  38 80 FF BD */	li r4, -67
/* 8051C7A8  38 A0 00 00 */	li r5, 0
/* 8051C7AC  38 C0 FF 9A */	li r6, -102
/* 8051C7B0  4B D4 AC 45 */	bl __ct__5csXyzFsss
/* 8051C7B4  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C7B8  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C7BC  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8051C7C0  94 03 00 42 */	stwu r0, 0x42(r3)
/* 8051C7C4  A0 01 01 68 */	lhz r0, 0x168(r1)
/* 8051C7C8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C7CC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C7D0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C7D4  38 BF 0D 0C */	addi r5, r31, 0xd0c
/* 8051C7D8  4B FF F5 01 */	bl __register_global_object
/* 8051C7DC  38 61 01 5C */	addi r3, r1, 0x15c
/* 8051C7E0  38 80 FF EB */	li r4, -21
/* 8051C7E4  38 A0 00 00 */	li r5, 0
/* 8051C7E8  38 C0 00 7E */	li r6, 0x7e
/* 8051C7EC  4B D4 AC 09 */	bl __ct__5csXyzFsss
/* 8051C7F0  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C7F4  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C7F8  80 01 01 5C */	lwz r0, 0x15c(r1)
/* 8051C7FC  94 03 00 48 */	stwu r0, 0x48(r3)
/* 8051C800  A0 01 01 60 */	lhz r0, 0x160(r1)
/* 8051C804  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C808  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C80C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C810  38 BF 0D 18 */	addi r5, r31, 0xd18
/* 8051C814  4B FF F4 C5 */	bl __register_global_object
/* 8051C818  38 61 01 54 */	addi r3, r1, 0x154
/* 8051C81C  38 80 FF 88 */	li r4, -120
/* 8051C820  38 A0 00 00 */	li r5, 0
/* 8051C824  38 C0 FF B2 */	li r6, -78
/* 8051C828  4B D4 AB CD */	bl __ct__5csXyzFsss
/* 8051C82C  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C830  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C834  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8051C838  94 03 00 4E */	stwu r0, 0x4e(r3)
/* 8051C83C  A0 01 01 58 */	lhz r0, 0x158(r1)
/* 8051C840  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C844  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C848  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C84C  38 BF 0D 24 */	addi r5, r31, 0xd24
/* 8051C850  4B FF F4 89 */	bl __register_global_object
/* 8051C854  38 61 01 4C */	addi r3, r1, 0x14c
/* 8051C858  38 80 FF BA */	li r4, -70
/* 8051C85C  38 A0 00 00 */	li r5, 0
/* 8051C860  38 C0 FF CF */	li r6, -49
/* 8051C864  4B D4 AB 91 */	bl __ct__5csXyzFsss
/* 8051C868  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C86C  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C870  80 01 01 4C */	lwz r0, 0x14c(r1)
/* 8051C874  94 03 00 54 */	stwu r0, 0x54(r3)
/* 8051C878  A0 01 01 50 */	lhz r0, 0x150(r1)
/* 8051C87C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C880  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C884  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C888  38 BF 0D 30 */	addi r5, r31, 0xd30
/* 8051C88C  4B FF F4 4D */	bl __register_global_object
/* 8051C890  38 61 01 44 */	addi r3, r1, 0x144
/* 8051C894  38 80 00 20 */	li r4, 0x20
/* 8051C898  38 A0 00 00 */	li r5, 0
/* 8051C89C  38 C0 00 67 */	li r6, 0x67
/* 8051C8A0  4B D4 AB 55 */	bl __ct__5csXyzFsss
/* 8051C8A4  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C8A8  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C8AC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8051C8B0  94 03 00 5A */	stwu r0, 0x5a(r3)
/* 8051C8B4  A0 01 01 48 */	lhz r0, 0x148(r1)
/* 8051C8B8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C8BC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C8C0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C8C4  38 BF 0D 3C */	addi r5, r31, 0xd3c
/* 8051C8C8  4B FF F4 11 */	bl __register_global_object
/* 8051C8CC  38 61 01 3C */	addi r3, r1, 0x13c
/* 8051C8D0  38 80 00 22 */	li r4, 0x22
/* 8051C8D4  38 A0 00 00 */	li r5, 0
/* 8051C8D8  38 C0 00 33 */	li r6, 0x33
/* 8051C8DC  4B D4 AB 19 */	bl __ct__5csXyzFsss
/* 8051C8E0  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C8E4  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C8E8  80 01 01 3C */	lwz r0, 0x13c(r1)
/* 8051C8EC  94 03 00 60 */	stwu r0, 0x60(r3)
/* 8051C8F0  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 8051C8F4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C8F8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C8FC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C900  38 BF 0D 48 */	addi r5, r31, 0xd48
/* 8051C904  4B FF F3 D5 */	bl __register_global_object
/* 8051C908  38 61 01 34 */	addi r3, r1, 0x134
/* 8051C90C  38 80 FF B8 */	li r4, -72
/* 8051C910  38 A0 00 00 */	li r5, 0
/* 8051C914  38 C0 00 62 */	li r6, 0x62
/* 8051C918  4B D4 AA DD */	bl __ct__5csXyzFsss
/* 8051C91C  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C920  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C924  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8051C928  94 03 00 66 */	stwu r0, 0x66(r3)
/* 8051C92C  A0 01 01 38 */	lhz r0, 0x138(r1)
/* 8051C930  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C934  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C938  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C93C  38 BF 0D 54 */	addi r5, r31, 0xd54
/* 8051C940  4B FF F3 99 */	bl __register_global_object
/* 8051C944  38 61 01 2C */	addi r3, r1, 0x12c
/* 8051C948  38 80 FF BC */	li r4, -68
/* 8051C94C  38 A0 00 00 */	li r5, 0
/* 8051C950  38 C0 00 2F */	li r6, 0x2f
/* 8051C954  4B D4 AA A1 */	bl __ct__5csXyzFsss
/* 8051C958  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C95C  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C960  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 8051C964  94 03 00 6C */	stwu r0, 0x6c(r3)
/* 8051C968  A0 01 01 30 */	lhz r0, 0x130(r1)
/* 8051C96C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C970  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C974  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C978  38 BF 0D 60 */	addi r5, r31, 0xd60
/* 8051C97C  4B FF F3 5D */	bl __register_global_object
/* 8051C980  38 61 01 24 */	addi r3, r1, 0x124
/* 8051C984  38 80 00 21 */	li r4, 0x21
/* 8051C988  38 A0 00 00 */	li r5, 0
/* 8051C98C  38 C0 FF FB */	li r6, -5
/* 8051C990  4B D4 AA 65 */	bl __ct__5csXyzFsss
/* 8051C994  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C998  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C99C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8051C9A0  94 03 00 72 */	stwu r0, 0x72(r3)
/* 8051C9A4  A0 01 01 28 */	lhz r0, 0x128(r1)
/* 8051C9A8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C9AC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C9B0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C9B4  38 BF 0D 6C */	addi r5, r31, 0xd6c
/* 8051C9B8  4B FF F3 21 */	bl __register_global_object
/* 8051C9BC  38 61 01 1C */	addi r3, r1, 0x11c
/* 8051C9C0  38 80 00 87 */	li r4, 0x87
/* 8051C9C4  38 A0 00 00 */	li r5, 0
/* 8051C9C8  38 C0 FF CB */	li r6, -53
/* 8051C9CC  4B D4 AA 29 */	bl __ct__5csXyzFsss
/* 8051C9D0  3C 60 80 53 */	lis r3, struct_80528880+0x0@ha /* 0x80528880@ha */
/* 8051C9D4  38 63 88 80 */	addi r3, r3, struct_80528880+0x0@l /* 0x80528880@l */
/* 8051C9D8  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 8051C9DC  94 03 00 78 */	stwu r0, 0x78(r3)
/* 8051C9E0  A0 01 01 20 */	lhz r0, 0x120(r1)
/* 8051C9E4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051C9E8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051C9EC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051C9F0  38 BF 0D 78 */	addi r5, r31, 0xd78
/* 8051C9F4  4B FF F2 E5 */	bl __register_global_object
/* 8051C9F8  38 00 00 01 */	li r0, 1
/* 8051C9FC  3C 60 80 53 */	lis r3, struct_80528854+0x2A@ha /* 0x8052887E@ha */
/* 8051CA00  98 03 88 7E */	stb r0, struct_80528854+0x2A@l(r3)  /* 0x8052887E@l */
lbl_8051CA04:
/* 8051CA04  3C 60 80 53 */	lis r3, struct_80528880+0x7E@ha /* 0x805288FE@ha */
/* 8051CA08  88 03 88 FE */	lbz r0, struct_80528880+0x7E@l(r3)  /* 0x805288FE@l */
/* 8051CA0C  7C 00 07 75 */	extsb. r0, r0
/* 8051CA10  40 82 00 C0 */	bne lbl_8051CAD0
/* 8051CA14  38 61 01 14 */	addi r3, r1, 0x114
/* 8051CA18  38 80 00 19 */	li r4, 0x19
/* 8051CA1C  38 A0 00 00 */	li r5, 0
/* 8051CA20  38 C0 00 19 */	li r6, 0x19
/* 8051CA24  4B D4 A9 D1 */	bl __ct__5csXyzFsss
/* 8051CA28  3C 60 80 53 */	lis r3, struct_80528900+0x0@ha /* 0x80528900@ha */
/* 8051CA2C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8051CA30  94 03 89 00 */	stwu r0, struct_80528900+0x0@l(r3)  /* 0x80528900@l */
/* 8051CA34  A0 01 01 18 */	lhz r0, 0x118(r1)
/* 8051CA38  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CA3C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CA40  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CA44  38 BF 0D 84 */	addi r5, r31, 0xd84
/* 8051CA48  4B FF F2 91 */	bl __register_global_object
/* 8051CA4C  38 61 01 0C */	addi r3, r1, 0x10c
/* 8051CA50  38 80 00 19 */	li r4, 0x19
/* 8051CA54  38 A0 00 00 */	li r5, 0
/* 8051CA58  38 C0 FF E7 */	li r6, -25
/* 8051CA5C  4B D4 A9 99 */	bl __ct__5csXyzFsss
/* 8051CA60  3C 60 80 53 */	lis r3, struct_80528900+0x0@ha /* 0x80528900@ha */
/* 8051CA64  38 63 89 00 */	addi r3, r3, struct_80528900+0x0@l /* 0x80528900@l */
/* 8051CA68  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 8051CA6C  94 03 00 06 */	stwu r0, 6(r3)
/* 8051CA70  A0 01 01 10 */	lhz r0, 0x110(r1)
/* 8051CA74  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CA78  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CA7C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CA80  38 BF 0D 90 */	addi r5, r31, 0xd90
/* 8051CA84  4B FF F2 55 */	bl __register_global_object
/* 8051CA88  38 61 01 04 */	addi r3, r1, 0x104
/* 8051CA8C  38 80 FF E7 */	li r4, -25
/* 8051CA90  38 A0 00 00 */	li r5, 0
/* 8051CA94  38 C0 00 00 */	li r6, 0
/* 8051CA98  4B D4 A9 5D */	bl __ct__5csXyzFsss
/* 8051CA9C  3C 60 80 53 */	lis r3, struct_80528900+0x0@ha /* 0x80528900@ha */
/* 8051CAA0  38 63 89 00 */	addi r3, r3, struct_80528900+0x0@l /* 0x80528900@l */
/* 8051CAA4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8051CAA8  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051CAAC  A0 01 01 08 */	lhz r0, 0x108(r1)
/* 8051CAB0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CAB4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CAB8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CABC  38 BF 0D 9C */	addi r5, r31, 0xd9c
/* 8051CAC0  4B FF F2 19 */	bl __register_global_object
/* 8051CAC4  38 00 00 01 */	li r0, 1
/* 8051CAC8  3C 60 80 53 */	lis r3, struct_80528880+0x7E@ha /* 0x805288FE@ha */
/* 8051CACC  98 03 88 FE */	stb r0, struct_80528880+0x7E@l(r3)  /* 0x805288FE@l */
lbl_8051CAD0:
/* 8051CAD0  3C 60 80 53 */	lis r3, struct_80528900+0x12@ha /* 0x80528912@ha */
/* 8051CAD4  88 03 89 12 */	lbz r0, struct_80528900+0x12@l(r3)  /* 0x80528912@l */
/* 8051CAD8  7C 00 07 75 */	extsb. r0, r0
/* 8051CADC  40 82 01 B0 */	bne lbl_8051CC8C
/* 8051CAE0  38 61 00 FC */	addi r3, r1, 0xfc
/* 8051CAE4  38 80 FF E8 */	li r4, -24
/* 8051CAE8  38 A0 00 00 */	li r5, 0
/* 8051CAEC  38 C0 FF E4 */	li r6, -28
/* 8051CAF0  4B D4 A9 05 */	bl __ct__5csXyzFsss
/* 8051CAF4  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CAF8  80 01 00 FC */	lwz r0, 0xfc(r1)
/* 8051CAFC  94 03 89 14 */	stwu r0, struct_80528914+0x0@l(r3)  /* 0x80528914@l */
/* 8051CB00  A0 01 01 00 */	lhz r0, 0x100(r1)
/* 8051CB04  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CB08  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CB0C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CB10  38 BF 0D A8 */	addi r5, r31, 0xda8
/* 8051CB14  4B FF F1 C5 */	bl __register_global_object
/* 8051CB18  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8051CB1C  38 80 00 1B */	li r4, 0x1b
/* 8051CB20  38 A0 00 00 */	li r5, 0
/* 8051CB24  38 C0 FF E4 */	li r6, -28
/* 8051CB28  4B D4 A8 CD */	bl __ct__5csXyzFsss
/* 8051CB2C  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CB30  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CB34  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8051CB38  94 03 00 06 */	stwu r0, 6(r3)
/* 8051CB3C  A0 01 00 F8 */	lhz r0, 0xf8(r1)
/* 8051CB40  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CB44  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CB48  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CB4C  38 BF 0D B4 */	addi r5, r31, 0xdb4
/* 8051CB50  4B FF F1 89 */	bl __register_global_object
/* 8051CB54  38 61 00 EC */	addi r3, r1, 0xec
/* 8051CB58  38 80 FF EB */	li r4, -21
/* 8051CB5C  38 A0 00 00 */	li r5, 0
/* 8051CB60  38 C0 00 21 */	li r6, 0x21
/* 8051CB64  4B D4 A8 91 */	bl __ct__5csXyzFsss
/* 8051CB68  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CB6C  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CB70  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8051CB74  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051CB78  A0 01 00 F0 */	lhz r0, 0xf0(r1)
/* 8051CB7C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CB80  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CB84  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CB88  38 BF 0D C0 */	addi r5, r31, 0xdc0
/* 8051CB8C  4B FF F1 4D */	bl __register_global_object
/* 8051CB90  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8051CB94  38 80 FF EE */	li r4, -18
/* 8051CB98  38 A0 00 00 */	li r5, 0
/* 8051CB9C  38 C0 FF DE */	li r6, -34
/* 8051CBA0  4B D4 A8 55 */	bl __ct__5csXyzFsss
/* 8051CBA4  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CBA8  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CBAC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8051CBB0  94 03 00 12 */	stwu r0, 0x12(r3)
/* 8051CBB4  A0 01 00 E8 */	lhz r0, 0xe8(r1)
/* 8051CBB8  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CBBC  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CBC0  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CBC4  38 BF 0D CC */	addi r5, r31, 0xdcc
/* 8051CBC8  4B FF F1 11 */	bl __register_global_object
/* 8051CBCC  38 61 00 DC */	addi r3, r1, 0xdc
/* 8051CBD0  38 80 00 2C */	li r4, 0x2c
/* 8051CBD4  38 A0 00 00 */	li r5, 0
/* 8051CBD8  38 C0 FF FC */	li r6, -4
/* 8051CBDC  4B D4 A8 19 */	bl __ct__5csXyzFsss
/* 8051CBE0  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CBE4  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CBE8  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8051CBEC  94 03 00 18 */	stwu r0, 0x18(r3)
/* 8051CBF0  A0 01 00 E0 */	lhz r0, 0xe0(r1)
/* 8051CBF4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CBF8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CBFC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CC00  38 BF 0D D8 */	addi r5, r31, 0xdd8
/* 8051CC04  4B FF F0 D5 */	bl __register_global_object
/* 8051CC08  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8051CC0C  38 80 00 29 */	li r4, 0x29
/* 8051CC10  38 A0 00 00 */	li r5, 0
/* 8051CC14  38 C0 00 0A */	li r6, 0xa
/* 8051CC18  4B D4 A7 DD */	bl __ct__5csXyzFsss
/* 8051CC1C  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CC20  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CC24  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8051CC28  94 03 00 1E */	stwu r0, 0x1e(r3)
/* 8051CC2C  A0 01 00 D8 */	lhz r0, 0xd8(r1)
/* 8051CC30  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CC34  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CC38  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CC3C  38 BF 0D E4 */	addi r5, r31, 0xde4
/* 8051CC40  4B FF F0 99 */	bl __register_global_object
/* 8051CC44  38 61 00 CC */	addi r3, r1, 0xcc
/* 8051CC48  38 80 00 18 */	li r4, 0x18
/* 8051CC4C  38 A0 00 00 */	li r5, 0
/* 8051CC50  38 C0 00 27 */	li r6, 0x27
/* 8051CC54  4B D4 A7 A1 */	bl __ct__5csXyzFsss
/* 8051CC58  3C 60 80 53 */	lis r3, struct_80528914+0x0@ha /* 0x80528914@ha */
/* 8051CC5C  38 63 89 14 */	addi r3, r3, struct_80528914+0x0@l /* 0x80528914@l */
/* 8051CC60  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8051CC64  94 03 00 24 */	stwu r0, 0x24(r3)
/* 8051CC68  A0 01 00 D0 */	lhz r0, 0xd0(r1)
/* 8051CC6C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CC70  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CC74  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CC78  38 BF 0D F0 */	addi r5, r31, 0xdf0
/* 8051CC7C  4B FF F0 5D */	bl __register_global_object
/* 8051CC80  38 00 00 01 */	li r0, 1
/* 8051CC84  3C 60 80 53 */	lis r3, struct_80528900+0x12@ha /* 0x80528912@ha */
/* 8051CC88  98 03 89 12 */	stb r0, struct_80528900+0x12@l(r3)  /* 0x80528912@l */
lbl_8051CC8C:
/* 8051CC8C  3C 60 80 53 */	lis r3, struct_80528914+0x2A@ha /* 0x8052893E@ha */
/* 8051CC90  88 03 89 3E */	lbz r0, struct_80528914+0x2A@l(r3)  /* 0x8052893E@l */
/* 8051CC94  7C 00 07 75 */	extsb. r0, r0
/* 8051CC98  40 82 04 08 */	bne lbl_8051D0A0
/* 8051CC9C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8051CCA0  38 80 FF C9 */	li r4, -55
/* 8051CCA4  38 A0 00 00 */	li r5, 0
/* 8051CCA8  38 C0 FF EA */	li r6, -22
/* 8051CCAC  4B D4 A7 49 */	bl __ct__5csXyzFsss
/* 8051CCB0  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CCB4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8051CCB8  94 03 89 40 */	stwu r0, struct_80528940+0x0@l(r3)  /* 0x80528940@l */
/* 8051CCBC  A0 01 00 C8 */	lhz r0, 0xc8(r1)
/* 8051CCC0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CCC4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CCC8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CCCC  38 BF 0D FC */	addi r5, r31, 0xdfc
/* 8051CCD0  4B FF F0 09 */	bl __register_global_object
/* 8051CCD4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8051CCD8  38 80 FF E4 */	li r4, -28
/* 8051CCDC  38 A0 00 00 */	li r5, 0
/* 8051CCE0  38 C0 FF CE */	li r6, -50
/* 8051CCE4  4B D4 A7 11 */	bl __ct__5csXyzFsss
/* 8051CCE8  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CCEC  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CCF0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8051CCF4  94 03 00 06 */	stwu r0, 6(r3)
/* 8051CCF8  A0 01 00 C0 */	lhz r0, 0xc0(r1)
/* 8051CCFC  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CD00  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CD04  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CD08  38 BF 0E 08 */	addi r5, r31, 0xe08
/* 8051CD0C  4B FF EF CD */	bl __register_global_object
/* 8051CD10  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8051CD14  38 80 FF B3 */	li r4, -77
/* 8051CD18  38 A0 00 00 */	li r5, 0
/* 8051CD1C  38 C0 00 0B */	li r6, 0xb
/* 8051CD20  4B D4 A6 D5 */	bl __ct__5csXyzFsss
/* 8051CD24  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CD28  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CD2C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8051CD30  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051CD34  A0 01 00 B8 */	lhz r0, 0xb8(r1)
/* 8051CD38  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CD3C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CD40  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CD44  38 BF 0E 14 */	addi r5, r31, 0xe14
/* 8051CD48  4B FF EF 91 */	bl __register_global_object
/* 8051CD4C  38 61 00 AC */	addi r3, r1, 0xac
/* 8051CD50  38 80 00 37 */	li r4, 0x37
/* 8051CD54  38 A0 00 00 */	li r5, 0
/* 8051CD58  38 C0 FF D4 */	li r6, -44
/* 8051CD5C  4B D4 A6 99 */	bl __ct__5csXyzFsss
/* 8051CD60  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CD64  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CD68  80 01 00 AC */	lwz r0, 0xac(r1)
/* 8051CD6C  94 03 00 12 */	stwu r0, 0x12(r3)
/* 8051CD70  A0 01 00 B0 */	lhz r0, 0xb0(r1)
/* 8051CD74  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CD78  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CD7C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CD80  38 BF 0E 20 */	addi r5, r31, 0xe20
/* 8051CD84  4B FF EF 55 */	bl __register_global_object
/* 8051CD88  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8051CD8C  38 80 00 53 */	li r4, 0x53
/* 8051CD90  38 A0 00 00 */	li r5, 0
/* 8051CD94  38 C0 FF B9 */	li r6, -71
/* 8051CD98  4B D4 A6 5D */	bl __ct__5csXyzFsss
/* 8051CD9C  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CDA0  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CDA4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8051CDA8  94 03 00 18 */	stwu r0, 0x18(r3)
/* 8051CDAC  A0 01 00 A8 */	lhz r0, 0xa8(r1)
/* 8051CDB0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CDB4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CDB8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CDBC  38 BF 0E 2C */	addi r5, r31, 0xe2c
/* 8051CDC0  4B FF EF 19 */	bl __register_global_object
/* 8051CDC4  38 61 00 9C */	addi r3, r1, 0x9c
/* 8051CDC8  38 80 00 0B */	li r4, 0xb
/* 8051CDCC  38 A0 00 00 */	li r5, 0
/* 8051CDD0  38 C0 FF D0 */	li r6, -48
/* 8051CDD4  4B D4 A6 21 */	bl __ct__5csXyzFsss
/* 8051CDD8  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CDDC  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CDE0  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8051CDE4  94 03 00 1E */	stwu r0, 0x1e(r3)
/* 8051CDE8  A0 01 00 A0 */	lhz r0, 0xa0(r1)
/* 8051CDEC  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CDF0  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CDF4  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CDF8  38 BF 0E 38 */	addi r5, r31, 0xe38
/* 8051CDFC  4B FF EE DD */	bl __register_global_object
/* 8051CE00  38 61 00 94 */	addi r3, r1, 0x94
/* 8051CE04  38 80 00 61 */	li r4, 0x61
/* 8051CE08  38 A0 00 00 */	li r5, 0
/* 8051CE0C  38 C0 FF DE */	li r6, -34
/* 8051CE10  4B D4 A5 E5 */	bl __ct__5csXyzFsss
/* 8051CE14  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CE18  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CE1C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8051CE20  94 03 00 24 */	stwu r0, 0x24(r3)
/* 8051CE24  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 8051CE28  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CE2C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CE30  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CE34  38 BF 0E 44 */	addi r5, r31, 0xe44
/* 8051CE38  4B FF EE A1 */	bl __register_global_object
/* 8051CE3C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8051CE40  38 80 FF B6 */	li r4, -74
/* 8051CE44  38 A0 00 00 */	li r5, 0
/* 8051CE48  38 C0 FF C7 */	li r6, -57
/* 8051CE4C  4B D4 A5 A9 */	bl __ct__5csXyzFsss
/* 8051CE50  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CE54  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CE58  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8051CE5C  94 03 00 2A */	stwu r0, 0x2a(r3)
/* 8051CE60  A0 01 00 90 */	lhz r0, 0x90(r1)
/* 8051CE64  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CE68  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CE6C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CE70  38 BF 0E 50 */	addi r5, r31, 0xe50
/* 8051CE74  4B FF EE 65 */	bl __register_global_object
/* 8051CE78  38 61 00 84 */	addi r3, r1, 0x84
/* 8051CE7C  38 80 00 1F */	li r4, 0x1f
/* 8051CE80  38 A0 00 00 */	li r5, 0
/* 8051CE84  38 C0 00 3A */	li r6, 0x3a
/* 8051CE88  4B D4 A5 6D */	bl __ct__5csXyzFsss
/* 8051CE8C  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CE90  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CE94  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8051CE98  94 03 00 30 */	stwu r0, 0x30(r3)
/* 8051CE9C  A0 01 00 88 */	lhz r0, 0x88(r1)
/* 8051CEA0  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CEA4  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CEA8  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CEAC  38 BF 0E 5C */	addi r5, r31, 0xe5c
/* 8051CEB0  4B FF EE 29 */	bl __register_global_object
/* 8051CEB4  38 61 00 7C */	addi r3, r1, 0x7c
/* 8051CEB8  38 80 00 3B */	li r4, 0x3b
/* 8051CEBC  38 A0 00 00 */	li r5, 0
/* 8051CEC0  38 C0 00 1E */	li r6, 0x1e
/* 8051CEC4  4B D4 A5 31 */	bl __ct__5csXyzFsss
/* 8051CEC8  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CECC  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CED0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8051CED4  94 03 00 36 */	stwu r0, 0x36(r3)
/* 8051CED8  A0 01 00 80 */	lhz r0, 0x80(r1)
/* 8051CEDC  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CEE0  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CEE4  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CEE8  38 BF 0E 68 */	addi r5, r31, 0xe68
/* 8051CEEC  4B FF ED ED */	bl __register_global_object
/* 8051CEF0  38 61 00 74 */	addi r3, r1, 0x74
/* 8051CEF4  38 80 00 0D */	li r4, 0xd
/* 8051CEF8  38 A0 00 00 */	li r5, 0
/* 8051CEFC  38 C0 00 17 */	li r6, 0x17
/* 8051CF00  4B D4 A4 F5 */	bl __ct__5csXyzFsss
/* 8051CF04  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CF08  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CF0C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8051CF10  94 03 00 3C */	stwu r0, 0x3c(r3)
/* 8051CF14  A0 01 00 78 */	lhz r0, 0x78(r1)
/* 8051CF18  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CF1C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CF20  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CF24  38 BF 0E 74 */	addi r5, r31, 0xe74
/* 8051CF28  4B FF ED B1 */	bl __register_global_object
/* 8051CF2C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8051CF30  38 80 FF F4 */	li r4, -12
/* 8051CF34  38 A0 00 00 */	li r5, 0
/* 8051CF38  38 C0 00 36 */	li r6, 0x36
/* 8051CF3C  4B D4 A4 B9 */	bl __ct__5csXyzFsss
/* 8051CF40  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CF44  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CF48  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8051CF4C  94 03 00 42 */	stwu r0, 0x42(r3)
/* 8051CF50  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 8051CF54  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CF58  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CF5C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CF60  38 BF 0E 80 */	addi r5, r31, 0xe80
/* 8051CF64  4B FF ED 75 */	bl __register_global_object
/* 8051CF68  38 61 00 64 */	addi r3, r1, 0x64
/* 8051CF6C  38 80 00 37 */	li r4, 0x37
/* 8051CF70  38 A0 00 00 */	li r5, 0
/* 8051CF74  38 C0 00 61 */	li r6, 0x61
/* 8051CF78  4B D4 A4 7D */	bl __ct__5csXyzFsss
/* 8051CF7C  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CF80  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CF84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8051CF88  94 03 00 48 */	stwu r0, 0x48(r3)
/* 8051CF8C  A0 01 00 68 */	lhz r0, 0x68(r1)
/* 8051CF90  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CF94  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CF98  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CF9C  38 BF 0E 8C */	addi r5, r31, 0xe8c
/* 8051CFA0  4B FF ED 39 */	bl __register_global_object
/* 8051CFA4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8051CFA8  38 80 00 0A */	li r4, 0xa
/* 8051CFAC  38 A0 00 00 */	li r5, 0
/* 8051CFB0  38 C0 00 5C */	li r6, 0x5c
/* 8051CFB4  4B D4 A4 41 */	bl __ct__5csXyzFsss
/* 8051CFB8  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CFBC  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CFC0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8051CFC4  94 03 00 4E */	stwu r0, 0x4e(r3)
/* 8051CFC8  A0 01 00 60 */	lhz r0, 0x60(r1)
/* 8051CFCC  B0 03 00 04 */	sth r0, 4(r3)
/* 8051CFD0  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051CFD4  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051CFD8  38 BF 0E 98 */	addi r5, r31, 0xe98
/* 8051CFDC  4B FF EC FD */	bl __register_global_object
/* 8051CFE0  38 61 00 54 */	addi r3, r1, 0x54
/* 8051CFE4  38 80 00 21 */	li r4, 0x21
/* 8051CFE8  38 A0 00 00 */	li r5, 0
/* 8051CFEC  38 C0 FF F6 */	li r6, -10
/* 8051CFF0  4B D4 A4 05 */	bl __ct__5csXyzFsss
/* 8051CFF4  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051CFF8  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051CFFC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8051D000  94 03 00 54 */	stwu r0, 0x54(r3)
/* 8051D004  A0 01 00 58 */	lhz r0, 0x58(r1)
/* 8051D008  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D00C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D010  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D014  38 BF 0E A4 */	addi r5, r31, 0xea4
/* 8051D018  4B FF EC C1 */	bl __register_global_object
/* 8051D01C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8051D020  38 80 FF 9D */	li r4, -99
/* 8051D024  38 A0 00 00 */	li r5, 0
/* 8051D028  38 C0 FF E5 */	li r6, -27
/* 8051D02C  4B D4 A3 C9 */	bl __ct__5csXyzFsss
/* 8051D030  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051D034  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051D038  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8051D03C  94 03 00 5A */	stwu r0, 0x5a(r3)
/* 8051D040  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 8051D044  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D048  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D04C  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D050  38 BF 0E B0 */	addi r5, r31, 0xeb0
/* 8051D054  4B FF EC 85 */	bl __register_global_object
/* 8051D058  38 61 00 44 */	addi r3, r1, 0x44
/* 8051D05C  38 80 00 28 */	li r4, 0x28
/* 8051D060  38 A0 00 00 */	li r5, 0
/* 8051D064  38 C0 FF A9 */	li r6, -87
/* 8051D068  4B D4 A3 8D */	bl __ct__5csXyzFsss
/* 8051D06C  3C 60 80 53 */	lis r3, struct_80528940+0x0@ha /* 0x80528940@ha */
/* 8051D070  38 63 89 40 */	addi r3, r3, struct_80528940+0x0@l /* 0x80528940@l */
/* 8051D074  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051D078  94 03 00 60 */	stwu r0, 0x60(r3)
/* 8051D07C  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 8051D080  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D084  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D088  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D08C  38 BF 0E BC */	addi r5, r31, 0xebc
/* 8051D090  4B FF EC 49 */	bl __register_global_object
/* 8051D094  38 00 00 01 */	li r0, 1
/* 8051D098  3C 60 80 53 */	lis r3, struct_80528914+0x2A@ha /* 0x8052893E@ha */
/* 8051D09C  98 03 89 3E */	stb r0, struct_80528914+0x2A@l(r3)  /* 0x8052893E@l */
lbl_8051D0A0:
/* 8051D0A0  3C 60 80 53 */	lis r3, struct_80528940+0x66@ha /* 0x805289A6@ha */
/* 8051D0A4  88 03 89 A6 */	lbz r0, struct_80528940+0x66@l(r3)  /* 0x805289A6@l */
/* 8051D0A8  7C 00 07 75 */	extsb. r0, r0
/* 8051D0AC  40 82 01 B0 */	bne lbl_8051D25C
/* 8051D0B0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8051D0B4  38 80 00 00 */	li r4, 0
/* 8051D0B8  38 A0 00 00 */	li r5, 0
/* 8051D0BC  38 C0 00 03 */	li r6, 3
/* 8051D0C0  4B D4 A3 35 */	bl __ct__5csXyzFsss
/* 8051D0C4  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D0C8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8051D0CC  94 03 89 A8 */	stwu r0, data_805289A8@l(r3)  /* 0x805289A8@l */
/* 8051D0D0  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 8051D0D4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D0D8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D0DC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D0E0  38 BF 0E C8 */	addi r5, r31, 0xec8
/* 8051D0E4  4B FF EB F5 */	bl __register_global_object
/* 8051D0E8  38 61 00 34 */	addi r3, r1, 0x34
/* 8051D0EC  38 80 FF E6 */	li r4, -26
/* 8051D0F0  38 A0 00 00 */	li r5, 0
/* 8051D0F4  38 C0 FF E3 */	li r6, -29
/* 8051D0F8  4B D4 A2 FD */	bl __ct__5csXyzFsss
/* 8051D0FC  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D100  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051D108  94 03 00 06 */	stwu r0, 6(r3)
/* 8051D10C  A0 01 00 38 */	lhz r0, 0x38(r1)
/* 8051D110  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D114  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D118  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D11C  38 BF 0E D4 */	addi r5, r31, 0xed4
/* 8051D120  4B FF EB B9 */	bl __register_global_object
/* 8051D124  38 61 00 2C */	addi r3, r1, 0x2c
/* 8051D128  38 80 00 07 */	li r4, 7
/* 8051D12C  38 A0 00 00 */	li r5, 0
/* 8051D130  38 C0 FF E7 */	li r6, -25
/* 8051D134  4B D4 A2 C1 */	bl __ct__5csXyzFsss
/* 8051D138  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D13C  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D140  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8051D144  94 03 00 0C */	stwu r0, 0xc(r3)
/* 8051D148  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 8051D14C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D150  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D154  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D158  38 BF 0E E0 */	addi r5, r31, 0xee0
/* 8051D15C  4B FF EB 7D */	bl __register_global_object
/* 8051D160  38 61 00 24 */	addi r3, r1, 0x24
/* 8051D164  38 80 00 1F */	li r4, 0x1f
/* 8051D168  38 A0 00 00 */	li r5, 0
/* 8051D16C  38 C0 FF FB */	li r6, -5
/* 8051D170  4B D4 A2 85 */	bl __ct__5csXyzFsss
/* 8051D174  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D178  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D17C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D180  94 03 00 12 */	stwu r0, 0x12(r3)
/* 8051D184  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 8051D188  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D18C  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D190  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D194  38 BF 0E EC */	addi r5, r31, 0xeec
/* 8051D198  4B FF EB 41 */	bl __register_global_object
/* 8051D19C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8051D1A0  38 80 FF F9 */	li r4, -7
/* 8051D1A4  38 A0 00 00 */	li r5, 0
/* 8051D1A8  38 C0 00 28 */	li r6, 0x28
/* 8051D1AC  4B D4 A2 49 */	bl __ct__5csXyzFsss
/* 8051D1B0  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D1B4  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D1B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8051D1BC  94 03 00 18 */	stwu r0, 0x18(r3)
/* 8051D1C0  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8051D1C4  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D1C8  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D1CC  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D1D0  38 BF 0E F8 */	addi r5, r31, 0xef8
/* 8051D1D4  4B FF EB 05 */	bl __register_global_object
/* 8051D1D8  38 61 00 14 */	addi r3, r1, 0x14
/* 8051D1DC  38 80 FF DD */	li r4, -35
/* 8051D1E0  38 A0 00 00 */	li r5, 0
/* 8051D1E4  38 C0 00 0F */	li r6, 0xf
/* 8051D1E8  4B D4 A2 0D */	bl __ct__5csXyzFsss
/* 8051D1EC  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D1F0  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051D1F8  94 03 00 1E */	stwu r0, 0x1e(r3)
/* 8051D1FC  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8051D200  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D204  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D208  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D20C  38 BF 0F 04 */	addi r5, r31, 0xf04
/* 8051D210  4B FF EA C9 */	bl __register_global_object
/* 8051D214  38 61 00 0C */	addi r3, r1, 0xc
/* 8051D218  38 80 00 17 */	li r4, 0x17
/* 8051D21C  38 A0 00 00 */	li r5, 0
/* 8051D220  38 C0 00 20 */	li r6, 0x20
/* 8051D224  4B D4 A1 D1 */	bl __ct__5csXyzFsss
/* 8051D228  3C 60 80 53 */	lis r3, data_805289A8@ha /* 0x805289A8@ha */
/* 8051D22C  38 63 89 A8 */	addi r3, r3, data_805289A8@l /* 0x805289A8@l */
/* 8051D230  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8051D234  94 03 00 24 */	stwu r0, 0x24(r3)
/* 8051D238  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8051D23C  B0 03 00 04 */	sth r0, 4(r3)
/* 8051D240  3C 80 80 52 */	lis r4, __dt__5csXyzFv@ha /* 0x8051EB4C@ha */
/* 8051D244  38 84 EB 4C */	addi r4, r4, __dt__5csXyzFv@l /* 0x8051EB4C@l */
/* 8051D248  38 BF 0F 10 */	addi r5, r31, 0xf10
/* 8051D24C  4B FF EA 8D */	bl __register_global_object
/* 8051D250  38 00 00 01 */	li r0, 1
/* 8051D254  3C 60 80 53 */	lis r3, struct_80528940+0x66@ha /* 0x805289A6@ha */
/* 8051D258  98 03 89 A6 */	stb r0, struct_80528940+0x66@l(r3)  /* 0x805289A6@l */
lbl_8051D25C:
/* 8051D25C  3C 60 80 52 */	lis r3, data_80527800@ha /* 0x80527800@ha */
/* 8051D260  38 A3 78 00 */	addi r5, r3, data_80527800@l /* 0x80527800@l */
/* 8051D264  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8051D268  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 8051D26C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8051D270  54 1F E7 BE */	rlwinm r31, r0, 0x1c, 0x1e, 0x1f
/* 8051D274  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8051D278  B0 01 00 08 */	sth r0, 8(r1)
/* 8051D27C  28 1A 00 01 */	cmplwi r26, 1
/* 8051D280  41 80 00 2C */	blt lbl_8051D2AC
/* 8051D284  28 1F 00 00 */	cmplwi r31, 0
/* 8051D288  40 82 00 24 */	bne lbl_8051D2AC
/* 8051D28C  38 9A FF FF */	addi r4, r26, -1
/* 8051D290  38 60 00 03 */	li r3, 3
/* 8051D294  7C 04 1B D6 */	divw r0, r4, r3
/* 8051D298  7C 00 19 D6 */	mullw r0, r0, r3
/* 8051D29C  7C 00 20 50 */	subf r0, r0, r4
/* 8051D2A0  54 00 18 38 */	slwi r0, r0, 3
/* 8051D2A4  7F 65 02 14 */	add r27, r5, r0
/* 8051D2A8  48 00 00 10 */	b lbl_8051D2B8
lbl_8051D2AC:
/* 8051D2AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8051D2B0  54 00 1E 78 */	rlwinm r0, r0, 3, 0x19, 0x1c
/* 8051D2B4  7F 65 02 14 */	add r27, r5, r0
lbl_8051D2B8:
/* 8051D2B8  83 3B 00 04 */	lwz r25, 4(r27)
/* 8051D2BC  28 1F 00 00 */	cmplwi r31, 0
/* 8051D2C0  40 82 02 C0 */	bne lbl_8051D580
/* 8051D2C4  4B FF EF E9 */	bl dGrass_Tex_Change__Fv
/* 8051D2C8  7F C3 F3 78 */	mr r3, r30
/* 8051D2CC  4B FF EC 31 */	bl createGrass__9daGrass_cFv
/* 8051D2D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051D2D4  41 82 03 A0 */	beq lbl_8051D674
/* 8051D2D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8051D2DC  54 1C 86 3E */	rlwinm r28, r0, 0x10, 0x18, 0x1f
/* 8051D2E0  54 1F C6 3E */	rlwinm r31, r0, 0x18, 0x18, 0x1f
/* 8051D2E4  4B C8 B8 55 */	bl dKy_get_dayofweek__Fv
/* 8051D2E8  2C 03 00 06 */	cmpwi r3, 6
/* 8051D2EC  40 82 01 04 */	bne lbl_8051D3F0
/* 8051D2F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051D2F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051D2F8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8051D2FC  3C 80 80 52 */	lis r4, d_a_grass__stringBase0@ha /* 0x805231C0@ha */
/* 8051D300  38 84 31 C0 */	addi r4, r4, d_a_grass__stringBase0@l /* 0x805231C0@l */
/* 8051D304  38 84 00 0E */	addi r4, r4, 0xe
/* 8051D308  4B E4 B6 8D */	bl strcmp
/* 8051D30C  2C 03 00 00 */	cmpwi r3, 0
/* 8051D310  40 82 00 E0 */	bne lbl_8051D3F0
/* 8051D314  3B 20 00 00 */	li r25, 0
/* 8051D318  3B 60 00 00 */	li r27, 0
/* 8051D31C  C3 BD 01 88 */	lfs f29, 0x188(r29)
/* 8051D320  3B 00 00 00 */	li r24, 0
/* 8051D324  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8051D328  3A C3 9A 20 */	addi r22, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8051D32C  C3 DD 00 04 */	lfs f30, 4(r29)
/* 8051D330  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8051D334  3A E3 FF FF */	addi r23, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8051D338  C3 FD 01 90 */	lfs f31, 0x190(r29)
/* 8051D33C  48 00 00 A8 */	b lbl_8051D3E4
lbl_8051D340:
/* 8051D340  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8051D344  B0 01 00 08 */	sth r0, 8(r1)
/* 8051D348  2C 18 00 00 */	cmpwi r24, 0
/* 8051D34C  41 82 00 0C */	beq lbl_8051D358
/* 8051D350  38 61 00 08 */	addi r3, r1, 8
/* 8051D354  4B FF E9 F9 */	bl randam_addcol_set__FPs
lbl_8051D358:
/* 8051D358  57 20 04 38 */	rlwinm r0, r25, 0, 0x10, 0x1c
/* 8051D35C  7C 76 02 14 */	add r3, r22, r0
/* 8051D360  C0 03 00 00 */	lfs f0, 0(r3)
/* 8051D364  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8051D368  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8051D36C  D3 C1 02 0C */	stfs f30, 0x20c(r1)
/* 8051D370  C0 03 00 04 */	lfs f0, 4(r3)
/* 8051D374  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8051D378  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8051D37C  3B 39 01 57 */	addi r25, r25, 0x157
/* 8051D380  7C 19 B8 00 */	cmpw r25, r23
/* 8051D384  40 81 00 20 */	ble lbl_8051D3A4
/* 8051D388  3F 39 FF FF */	addis r25, r25, 0xffff
/* 8051D38C  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 8051D390  EF BD 00 2A */	fadds f29, f29, f0
/* 8051D394  3B 7B 00 01 */	addi r27, r27, 1
/* 8051D398  2C 1B 03 E8 */	cmpwi r27, 0x3e8
/* 8051D39C  3B 39 00 01 */	addi r25, r25, 1
/* 8051D3A0  41 81 02 D4 */	bgt lbl_8051D674
lbl_8051D3A4:
/* 8051D3A4  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 8051D3A8  4B D4 A5 AD */	bl cM_rndF__Ff
/* 8051D3AC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8051D3B0  40 80 00 0C */	bge lbl_8051D3BC
/* 8051D3B4  3B 18 FF FF */	addi r24, r24, -1
/* 8051D3B8  48 00 00 28 */	b lbl_8051D3E0
lbl_8051D3BC:
/* 8051D3BC  7F C3 F3 78 */	mr r3, r30
/* 8051D3C0  38 81 02 08 */	addi r4, r1, 0x208
/* 8051D3C4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8051D3C8  7C 05 07 74 */	extsb r5, r0
/* 8051D3CC  7F 86 E3 78 */	mr r6, r28
/* 8051D3D0  7F E7 FB 78 */	mr r7, r31
/* 8051D3D4  A9 01 00 08 */	lha r8, 8(r1)
/* 8051D3D8  7F 49 D3 78 */	mr r9, r26
/* 8051D3DC  4B FF EC CD */	bl newGrassData__9daGrass_cFR4cXyziUcUcsUc
lbl_8051D3E0:
/* 8051D3E0  3B 18 00 01 */	addi r24, r24, 1
lbl_8051D3E4:
/* 8051D3E4  2C 18 01 F4 */	cmpwi r24, 0x1f4
/* 8051D3E8  41 80 FF 58 */	blt lbl_8051D340
/* 8051D3EC  48 00 02 88 */	b lbl_8051D674
lbl_8051D3F0:
/* 8051D3F0  3B 00 00 00 */	li r24, 0
/* 8051D3F4  48 00 01 7C */	b lbl_8051D570
lbl_8051D3F8:
/* 8051D3F8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8051D3FC  B0 01 00 08 */	sth r0, 8(r1)
/* 8051D400  2C 18 00 00 */	cmpwi r24, 0
/* 8051D404  41 82 00 0C */	beq lbl_8051D410
/* 8051D408  38 61 00 08 */	addi r3, r1, 8
/* 8051D40C  4B FF E9 41 */	bl randam_addcol_set__FPs
lbl_8051D410:
/* 8051D410  28 1A 00 0A */	cmplwi r26, 0xa
/* 8051D414  40 80 00 60 */	bge lbl_8051D474
/* 8051D418  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8051D41C  A8 19 00 00 */	lha r0, 0(r25)
/* 8051D420  C8 5D 00 38 */	lfd f2, 0x38(r29)
/* 8051D424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D428  90 01 02 1C */	stw r0, 0x21c(r1)
/* 8051D42C  3C 60 43 30 */	lis r3, 0x4330
/* 8051D430  90 61 02 18 */	stw r3, 0x218(r1)
/* 8051D434  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 8051D438  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051D43C  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D440  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8051D444  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051D448  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 8051D44C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8051D450  A8 19 00 04 */	lha r0, 4(r25)
/* 8051D454  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D458  90 01 02 24 */	stw r0, 0x224(r1)
/* 8051D45C  90 61 02 20 */	stw r3, 0x220(r1)
/* 8051D460  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 8051D464  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051D468  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D46C  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 8051D470  48 00 00 68 */	b lbl_8051D4D8
lbl_8051D474:
/* 8051D474  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8051D478  C0 7D 01 94 */	lfs f3, 0x194(r29)
/* 8051D47C  A8 19 00 00 */	lha r0, 0(r25)
/* 8051D480  C8 5D 00 38 */	lfd f2, 0x38(r29)
/* 8051D484  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D488  90 01 02 24 */	stw r0, 0x224(r1)
/* 8051D48C  3C 60 43 30 */	lis r3, 0x4330
/* 8051D490  90 61 02 20 */	stw r3, 0x220(r1)
/* 8051D494  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 8051D498  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051D49C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8051D4A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D4A4  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 8051D4A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051D4AC  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 8051D4B0  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8051D4B4  A8 19 00 04 */	lha r0, 4(r25)
/* 8051D4B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D4BC  90 01 02 1C */	stw r0, 0x21c(r1)
/* 8051D4C0  90 61 02 18 */	stw r3, 0x218(r1)
/* 8051D4C4  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 8051D4C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8051D4CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 8051D4D0  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D4D4  D0 01 02 10 */	stfs f0, 0x210(r1)
lbl_8051D4D8:
/* 8051D4D8  88 1B 00 00 */	lbz r0, 0(r27)
/* 8051D4DC  28 00 00 03 */	cmplwi r0, 3
/* 8051D4E0  40 82 00 0C */	bne lbl_8051D4EC
/* 8051D4E4  2C 18 00 00 */	cmpwi r24, 0
/* 8051D4E8  40 82 00 34 */	bne lbl_8051D51C
lbl_8051D4EC:
/* 8051D4EC  28 00 00 10 */	cmplwi r0, 0x10
/* 8051D4F0  41 80 00 14 */	blt lbl_8051D504
/* 8051D4F4  28 00 00 15 */	cmplwi r0, 0x15
/* 8051D4F8  41 81 00 0C */	bgt lbl_8051D504
/* 8051D4FC  2C 18 00 10 */	cmpwi r24, 0x10
/* 8051D500  40 80 00 1C */	bge lbl_8051D51C
lbl_8051D504:
/* 8051D504  28 00 00 04 */	cmplwi r0, 4
/* 8051D508  41 80 00 3C */	blt lbl_8051D544
/* 8051D50C  28 00 00 07 */	cmplwi r0, 7
/* 8051D510  41 81 00 34 */	bgt lbl_8051D544
/* 8051D514  2C 18 00 04 */	cmpwi r24, 4
/* 8051D518  41 80 00 2C */	blt lbl_8051D544
lbl_8051D51C:
/* 8051D51C  7F C3 F3 78 */	mr r3, r30
/* 8051D520  38 81 02 08 */	addi r4, r1, 0x208
/* 8051D524  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8051D528  7C 05 07 74 */	extsb r5, r0
/* 8051D52C  38 C0 00 FF */	li r6, 0xff
/* 8051D530  38 E0 00 FF */	li r7, 0xff
/* 8051D534  A9 01 00 08 */	lha r8, 8(r1)
/* 8051D538  7F 49 D3 78 */	mr r9, r26
/* 8051D53C  4B FF EB 6D */	bl newGrassData__9daGrass_cFR4cXyziUcUcsUc
/* 8051D540  48 00 00 28 */	b lbl_8051D568
lbl_8051D544:
/* 8051D544  7F C3 F3 78 */	mr r3, r30
/* 8051D548  38 81 02 08 */	addi r4, r1, 0x208
/* 8051D54C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8051D550  7C 05 07 74 */	extsb r5, r0
/* 8051D554  7F 86 E3 78 */	mr r6, r28
/* 8051D558  7F E7 FB 78 */	mr r7, r31
/* 8051D55C  A9 01 00 08 */	lha r8, 8(r1)
/* 8051D560  7F 49 D3 78 */	mr r9, r26
/* 8051D564  4B FF EB 45 */	bl newGrassData__9daGrass_cFR4cXyziUcUcsUc
lbl_8051D568:
/* 8051D568  3B 39 00 06 */	addi r25, r25, 6
/* 8051D56C  3B 18 00 01 */	addi r24, r24, 1
lbl_8051D570:
/* 8051D570  88 1B 00 00 */	lbz r0, 0(r27)
/* 8051D574  7C 18 00 00 */	cmpw r24, r0
/* 8051D578  41 80 FE 80 */	blt lbl_8051D3F8
/* 8051D57C  48 00 00 F8 */	b lbl_8051D674
lbl_8051D580:
/* 8051D580  28 1F 00 02 */	cmplwi r31, 2
/* 8051D584  41 82 00 0C */	beq lbl_8051D590
/* 8051D588  28 1F 00 03 */	cmplwi r31, 3
/* 8051D58C  40 82 00 E8 */	bne lbl_8051D674
lbl_8051D590:
/* 8051D590  7F C3 F3 78 */	mr r3, r30
/* 8051D594  4B FF EB 41 */	bl createFlower__9daGrass_cFv
/* 8051D598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051D59C  41 82 00 D8 */	beq lbl_8051D674
/* 8051D5A0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8051D5A4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8051D5A8  28 1F 00 02 */	cmplwi r31, 2
/* 8051D5AC  40 82 00 0C */	bne lbl_8051D5B8
/* 8051D5B0  3B 80 00 01 */	li r28, 1
/* 8051D5B4  48 00 00 10 */	b lbl_8051D5C4
lbl_8051D5B8:
/* 8051D5B8  28 1F 00 03 */	cmplwi r31, 3
/* 8051D5BC  40 82 00 08 */	bne lbl_8051D5C4
/* 8051D5C0  3B 80 00 02 */	li r28, 2
lbl_8051D5C4:
/* 8051D5C4  3A E0 00 00 */	li r23, 0
/* 8051D5C8  7C 16 07 74 */	extsb r22, r0
/* 8051D5CC  CB FD 00 38 */	lfd f31, 0x38(r29)
/* 8051D5D0  3F 00 43 30 */	lis r24, 0x4330
/* 8051D5D4  48 00 00 94 */	b lbl_8051D668
lbl_8051D5D8:
/* 8051D5D8  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 8051D5DC  B0 01 00 08 */	sth r0, 8(r1)
/* 8051D5E0  2C 17 00 00 */	cmpwi r23, 0
/* 8051D5E4  41 82 00 0C */	beq lbl_8051D5F0
/* 8051D5E8  38 61 00 08 */	addi r3, r1, 8
/* 8051D5EC  4B FF E7 61 */	bl randam_addcol_set__FPs
lbl_8051D5F0:
/* 8051D5F0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8051D5F4  A8 19 00 00 */	lha r0, 0(r25)
/* 8051D5F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D5FC  90 01 02 24 */	stw r0, 0x224(r1)
/* 8051D600  93 01 02 20 */	stw r24, 0x220(r1)
/* 8051D604  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 8051D608  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8051D60C  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D610  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 8051D614  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8051D618  D0 01 02 00 */	stfs f0, 0x200(r1)
/* 8051D61C  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8051D620  A8 19 00 04 */	lha r0, 4(r25)
/* 8051D624  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051D628  90 01 02 1C */	stw r0, 0x21c(r1)
/* 8051D62C  93 01 02 18 */	stw r24, 0x218(r1)
/* 8051D630  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 8051D634  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8051D638  EC 01 00 2A */	fadds f0, f1, f0
/* 8051D63C  D0 01 02 04 */	stfs f0, 0x204(r1)
/* 8051D640  7F C3 F3 78 */	mr r3, r30
/* 8051D644  7F 84 E3 78 */	mr r4, r28
/* 8051D648  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 8051D64C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8051D650  7C 06 07 74 */	extsb r6, r0
/* 8051D654  7E C7 B3 78 */	mr r7, r22
/* 8051D658  A9 01 00 08 */	lha r8, 8(r1)
/* 8051D65C  4B FF EC 25 */	bl newFlowerData__9daGrass_cFScR4cXyziScs
/* 8051D660  3B 39 00 06 */	addi r25, r25, 6
/* 8051D664  3A F7 00 01 */	addi r23, r23, 1
lbl_8051D668:
/* 8051D668  88 1B 00 00 */	lbz r0, 0(r27)
/* 8051D66C  7C 17 00 00 */	cmpw r23, r0
/* 8051D670  41 80 FF 68 */	blt lbl_8051D5D8
lbl_8051D674:
/* 8051D674  3C 60 80 45 */	lis r3, m_myObj__9daGrass_c@ha /* 0x80450DAC@ha */
/* 8051D678  84 03 0D AC */	lwzu r0, m_myObj__9daGrass_c@l(r3)  /* 0x80450DAC@l */
/* 8051D67C  28 00 00 00 */	cmplwi r0, 0
/* 8051D680  41 82 00 0C */	beq lbl_8051D68C
/* 8051D684  38 60 00 05 */	li r3, 5
/* 8051D688  48 00 00 14 */	b lbl_8051D69C
lbl_8051D68C:
/* 8051D68C  93 C3 00 00 */	stw r30, 0(r3)
/* 8051D690  7F C3 F3 78 */	mr r3, r30
/* 8051D694  4B AF C2 31 */	bl fopAcM_setStageLayer__FPv
/* 8051D698  38 60 00 04 */	li r3, 4
lbl_8051D69C:
/* 8051D69C  E3 E1 02 78 */	psq_l f31, 632(r1), 0, 0 /* qr0 */
/* 8051D6A0  CB E1 02 70 */	lfd f31, 0x270(r1)
/* 8051D6A4  E3 C1 02 68 */	psq_l f30, 616(r1), 0, 0 /* qr0 */
/* 8051D6A8  CB C1 02 60 */	lfd f30, 0x260(r1)
/* 8051D6AC  E3 A1 02 58 */	psq_l f29, 600(r1), 0, 0 /* qr0 */
/* 8051D6B0  CB A1 02 50 */	lfd f29, 0x250(r1)
/* 8051D6B4  39 61 02 50 */	addi r11, r1, 0x250
/* 8051D6B8  4B E4 4B 55 */	bl _restgpr_22
/* 8051D6BC  80 01 02 84 */	lwz r0, 0x284(r1)
/* 8051D6C0  7C 08 03 A6 */	mtlr r0
/* 8051D6C4  38 21 02 80 */	addi r1, r1, 0x280
/* 8051D6C8  4E 80 00 20 */	blr 
