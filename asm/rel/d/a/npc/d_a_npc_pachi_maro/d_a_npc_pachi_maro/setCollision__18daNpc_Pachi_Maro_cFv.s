lbl_80A9928C:
/* 80A9928C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99290  7C 08 02 A6 */	mflr r0
/* 80A99294  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9929C  7C 7F 1B 78 */	mr r31, r3
/* 80A992A0  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A992A4  28 00 00 00 */	cmplwi r0, 0
/* 80A992A8  40 82 00 B0 */	bne lbl_80A99358
/* 80A992AC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A992B0  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A992B4  38 A0 00 1F */	li r5, 0x1f
/* 80A992B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A992BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A992C0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A992C4  28 00 00 00 */	cmplwi r0, 0
/* 80A992C8  41 82 00 10 */	beq lbl_80A992D8
/* 80A992CC  38 80 00 00 */	li r4, 0
/* 80A992D0  38 A0 00 00 */	li r5, 0
/* 80A992D4  48 00 00 30 */	b lbl_80A99304
lbl_80A992D8:
/* 80A992D8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A992DC  28 00 00 00 */	cmplwi r0, 0
/* 80A992E0  41 82 00 10 */	beq lbl_80A992F0
/* 80A992E4  38 80 00 00 */	li r4, 0
/* 80A992E8  38 A0 00 00 */	li r5, 0
/* 80A992EC  48 00 00 18 */	b lbl_80A99304
lbl_80A992F0:
/* 80A992F0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A992F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A992F8  41 82 00 0C */	beq lbl_80A99304
/* 80A992FC  38 80 00 00 */	li r4, 0
/* 80A99300  38 A0 00 00 */	li r5, 0
lbl_80A99304:
/* 80A99304  38 00 00 79 */	li r0, 0x79
/* 80A99308  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A9930C  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80A99310  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80A99314  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80A99318  60 00 00 04 */	ori r0, r0, 4
/* 80A9931C  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80A99320  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A99324  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80A99328  4B 7D 5E D1 */	bl SetH__8cM3dGCylFf
/* 80A9932C  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A99330  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A99334  4B 7D 5E CD */	bl SetR__8cM3dGCylFf
/* 80A99338  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A9933C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A99340  4B 7D 5E 9D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A99344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A99348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9934C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A99350  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A99354  4B 7C B8 55 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A99358:
/* 80A99358  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A9935C  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A99360  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A99364  7D 89 03 A6 */	mtctr r12
/* 80A99368  4E 80 04 21 */	bctrl 
/* 80A9936C  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A99370  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A99374  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A99378  7D 89 03 A6 */	mtctr r12
/* 80A9937C  4E 80 04 21 */	bctrl 
/* 80A99380  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A99384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A99388  7C 08 03 A6 */	mtlr r0
/* 80A9938C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A99390  4E 80 00 20 */	blr 
