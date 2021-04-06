lbl_80AD820C:
/* 80AD820C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD8210  7C 08 02 A6 */	mflr r0
/* 80AD8214  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD8218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD821C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD8220  7C 7F 1B 78 */	mr r31, r3
/* 80AD8224  48 00 99 25 */	bl __ct__8daNpcF_cFv
/* 80AD8228  3C 60 80 AE */	lis r3, __vt__11daNpcShad_c@ha /* 0x80AE2BD8@ha */
/* 80AD822C  38 03 2B D8 */	addi r0, r3, __vt__11daNpcShad_c@l /* 0x80AE2BD8@l */
/* 80AD8230  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80AD8234  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD8238  4B 7E 81 91 */	bl __ct__10Z2CreatureFv
/* 80AD823C  3B DF 0B E4 */	addi r30, r31, 0xbe4
/* 80AD8240  3C 60 80 AE */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AE2C98@ha */
/* 80AD8244  38 03 2C 98 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AE2C98@l */
/* 80AD8248  90 1F 0C 7C */	stw r0, 0xc7c(r31)
/* 80AD824C  7F C3 F3 78 */	mr r3, r30
/* 80AD8250  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE18F8@ha */
/* 80AD8254  38 84 18 F8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE18F8@l */
/* 80AD8258  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE18BC@ha */
/* 80AD825C  38 A5 18 BC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE18BC@l */
/* 80AD8260  38 C0 00 0C */	li r6, 0xc
/* 80AD8264  38 E0 00 04 */	li r7, 4
/* 80AD8268  4B 88 9A F9 */	bl __construct_array
/* 80AD826C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AD8270  3C 80 80 AE */	lis r4, __ct__5csXyzFv@ha /* 0x80AE18B8@ha */
/* 80AD8274  38 84 18 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE18B8@l */
/* 80AD8278  3C A0 80 AE */	lis r5, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD827C  38 A5 18 7C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD8280  38 C0 00 06 */	li r6, 6
/* 80AD8284  38 E0 00 04 */	li r7, 4
/* 80AD8288  4B 88 9A D9 */	bl __construct_array
/* 80AD828C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AD8290  3C 80 80 AE */	lis r4, __ct__5csXyzFv@ha /* 0x80AE18B8@ha */
/* 80AD8294  38 84 18 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE18B8@l */
/* 80AD8298  3C A0 80 AE */	lis r5, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD829C  38 A5 18 7C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD82A0  38 C0 00 06 */	li r6, 6
/* 80AD82A4  38 E0 00 04 */	li r7, 4
/* 80AD82A8  4B 88 9A B9 */	bl __construct_array
/* 80AD82AC  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AD82B0  3C 80 80 AE */	lis r4, __ct__5csXyzFv@ha /* 0x80AE18B8@ha */
/* 80AD82B4  38 84 18 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE18B8@l */
/* 80AD82B8  3C A0 80 AE */	lis r5, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD82BC  38 A5 18 7C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD82C0  38 C0 00 06 */	li r6, 6
/* 80AD82C4  38 E0 00 04 */	li r7, 4
/* 80AD82C8  4B 88 9A 99 */	bl __construct_array
/* 80AD82CC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AD82D0  3C 80 80 AE */	lis r4, __ct__5csXyzFv@ha /* 0x80AE18B8@ha */
/* 80AD82D4  38 84 18 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE18B8@l */
/* 80AD82D8  3C A0 80 AE */	lis r5, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AD82DC  38 A5 18 7C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AD82E0  38 C0 00 06 */	li r6, 6
/* 80AD82E4  38 E0 00 04 */	li r7, 4
/* 80AD82E8  4B 88 9A 79 */	bl __construct_array
/* 80AD82EC  7F C3 F3 78 */	mr r3, r30
/* 80AD82F0  4B 67 8D 49 */	bl initialize__15daNpcF_Lookat_cFv
/* 80AD82F4  38 7F 0C 80 */	addi r3, r31, 0xc80
/* 80AD82F8  3C 80 80 AE */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80AE1770@ha */
/* 80AD82FC  38 84 17 70 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80AE1770@l */
/* 80AD8300  3C A0 80 AE */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AE1728@ha */
/* 80AD8304  38 A5 17 28 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AE1728@l */
/* 80AD8308  38 C0 00 08 */	li r6, 8
/* 80AD830C  38 E0 00 05 */	li r7, 5
/* 80AD8310  4B 88 9A 51 */	bl __construct_array
/* 80AD8314  3B DF 0C B0 */	addi r30, r31, 0xcb0
/* 80AD8318  7F C3 F3 78 */	mr r3, r30
/* 80AD831C  4B 5A B7 0D */	bl __ct__12dCcD_GObjInfFv
/* 80AD8320  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AD8324  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AD8328  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AD832C  3C 60 80 AE */	lis r3, __vt__8cM3dGAab@ha /* 0x80AE2C8C@ha */
/* 80AD8330  38 03 2C 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AE2C8C@l */
/* 80AD8334  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AD8338  3C 60 80 AE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AE2C80@ha */
/* 80AD833C  38 03 2C 80 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AE2C80@l */
/* 80AD8340  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD8344  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AD8348  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AD834C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AD8350  38 03 00 58 */	addi r0, r3, 0x58
/* 80AD8354  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD8358  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AD835C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AD8360  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AD8364  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AD8368  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AD836C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AD8370  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AD8374  7F E3 FB 78 */	mr r3, r31
/* 80AD8378  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD837C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD8380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD8384  7C 08 03 A6 */	mtlr r0
/* 80AD8388  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD838C  4E 80 00 20 */	blr 
