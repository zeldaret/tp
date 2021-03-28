lbl_80B9C268:
/* 80B9C268  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9C26C  7C 08 02 A6 */	mflr r0
/* 80B9C270  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9C274  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9C278  7C 7F 1B 78 */	mr r31, r3
/* 80B9C27C  A8 03 09 54 */	lha r0, 0x954(r3)
/* 80B9C280  2C 00 00 01 */	cmpwi r0, 1
/* 80B9C284  41 82 00 4C */	beq lbl_80B9C2D0
/* 80B9C288  40 80 00 14 */	bge lbl_80B9C29C
/* 80B9C28C  2C 00 FF FF */	cmpwi r0, -1
/* 80B9C290  41 82 01 0C */	beq lbl_80B9C39C
/* 80B9C294  40 80 00 14 */	bge lbl_80B9C2A8
/* 80B9C298  48 00 01 04 */	b lbl_80B9C39C
lbl_80B9C29C:
/* 80B9C29C  2C 00 00 03 */	cmpwi r0, 3
/* 80B9C2A0  40 80 00 FC */	bge lbl_80B9C39C
/* 80B9C2A4  48 00 00 74 */	b lbl_80B9C318
lbl_80B9C2A8:
/* 80B9C2A8  3C 60 80 BA */	lis r3, lit_3773@ha
/* 80B9C2AC  C0 03 C9 3C */	lfs f0, lit_3773@l(r3)
/* 80B9C2B0  D0 1F 09 58 */	stfs f0, 0x958(r31)
/* 80B9C2B4  D0 1F 09 5C */	stfs f0, 0x95c(r31)
/* 80B9C2B8  D0 1F 09 60 */	stfs f0, 0x960(r31)
/* 80B9C2BC  38 00 00 1E */	li r0, 0x1e
/* 80B9C2C0  B0 1F 09 56 */	sth r0, 0x956(r31)
/* 80B9C2C4  38 00 00 01 */	li r0, 1
/* 80B9C2C8  B0 1F 09 54 */	sth r0, 0x954(r31)
/* 80B9C2CC  48 00 00 D0 */	b lbl_80B9C39C
lbl_80B9C2D0:
/* 80B9C2D0  A8 7F 09 56 */	lha r3, 0x956(r31)
/* 80B9C2D4  38 03 FF FF */	addi r0, r3, -1
/* 80B9C2D8  B0 1F 09 56 */	sth r0, 0x956(r31)
/* 80B9C2DC  7C 00 07 35 */	extsh. r0, r0
/* 80B9C2E0  41 81 00 BC */	bgt lbl_80B9C39C
/* 80B9C2E4  38 80 00 02 */	li r4, 2
/* 80B9C2E8  98 9F 09 70 */	stb r4, 0x970(r31)
/* 80B9C2EC  38 00 FF 00 */	li r0, -256
/* 80B9C2F0  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80B9C2F4  38 60 00 00 */	li r3, 0
/* 80B9C2F8  B0 7F 09 66 */	sth r3, 0x966(r31)
/* 80B9C2FC  B0 7F 09 68 */	sth r3, 0x968(r31)
/* 80B9C300  38 00 00 2A */	li r0, 0x2a
/* 80B9C304  B0 1F 09 6A */	sth r0, 0x96a(r31)
/* 80B9C308  B0 7F 09 6C */	sth r3, 0x96c(r31)
/* 80B9C30C  B0 7F 09 6E */	sth r3, 0x96e(r31)
/* 80B9C310  B0 9F 09 54 */	sth r4, 0x954(r31)
/* 80B9C314  48 00 00 88 */	b lbl_80B9C39C
lbl_80B9C318:
/* 80B9C318  38 7F 09 64 */	addi r3, r31, 0x964
/* 80B9C31C  38 9F 09 6A */	addi r4, r31, 0x96a
/* 80B9C320  4B 6C B1 3C */	b __apl__5csXyzFR5csXyz
/* 80B9C324  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80B9C328  38 9F 09 64 */	addi r4, r31, 0x964
/* 80B9C32C  4B 6C B1 30 */	b __apl__5csXyzFR5csXyz
/* 80B9C330  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80B9C334  2C 00 00 00 */	cmpwi r0, 0
/* 80B9C338  41 80 00 64 */	blt lbl_80B9C39C
/* 80B9C33C  38 60 00 00 */	li r3, 0
/* 80B9C340  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 80B9C344  38 00 FF 00 */	li r0, -256
/* 80B9C348  B0 1F 09 64 */	sth r0, 0x964(r31)
/* 80B9C34C  B0 7F 09 66 */	sth r3, 0x966(r31)
/* 80B9C350  B0 7F 09 68 */	sth r3, 0x968(r31)
/* 80B9C354  88 7F 09 70 */	lbz r3, 0x970(r31)
/* 80B9C358  38 03 FF FF */	addi r0, r3, -1
/* 80B9C35C  98 1F 09 70 */	stb r0, 0x970(r31)
/* 80B9C360  88 1F 09 70 */	lbz r0, 0x970(r31)
/* 80B9C364  7C 00 07 75 */	extsb. r0, r0
/* 80B9C368  41 81 00 34 */	bgt lbl_80B9C39C
/* 80B9C36C  3C 60 80 BA */	lis r3, lit_3947@ha
/* 80B9C370  38 83 C9 F4 */	addi r4, r3, lit_3947@l
/* 80B9C374  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9C378  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9C37C  90 61 00 08 */	stw r3, 8(r1)
/* 80B9C380  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9C384  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9C388  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9C38C  7F E3 FB 78 */	mr r3, r31
/* 80B9C390  38 81 00 08 */	addi r4, r1, 8
/* 80B9C394  38 A0 00 01 */	li r5, 1
/* 80B9C398  4B FF F9 99 */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
lbl_80B9C39C:
/* 80B9C39C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9C3A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9C3A4  7C 08 03 A6 */	mtlr r0
/* 80B9C3A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9C3AC  4E 80 00 20 */	blr 
