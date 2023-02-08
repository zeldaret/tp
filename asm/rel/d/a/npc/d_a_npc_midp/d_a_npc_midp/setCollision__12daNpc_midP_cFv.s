lbl_80A72064:
/* 80A72064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72068  7C 08 02 A6 */	mflr r0
/* 80A7206C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72074  7C 7F 1B 78 */	mr r31, r3
/* 80A72078  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A7207C  28 00 00 00 */	cmplwi r0, 0
/* 80A72080  40 82 00 B0 */	bne lbl_80A72130
/* 80A72084  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A72088  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A7208C  38 A0 00 1F */	li r5, 0x1f
/* 80A72090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A72094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A72098  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A7209C  28 00 00 00 */	cmplwi r0, 0
/* 80A720A0  41 82 00 10 */	beq lbl_80A720B0
/* 80A720A4  38 80 00 00 */	li r4, 0
/* 80A720A8  38 A0 00 00 */	li r5, 0
/* 80A720AC  48 00 00 30 */	b lbl_80A720DC
lbl_80A720B0:
/* 80A720B0  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A720B4  28 00 00 00 */	cmplwi r0, 0
/* 80A720B8  41 82 00 10 */	beq lbl_80A720C8
/* 80A720BC  38 80 00 00 */	li r4, 0
/* 80A720C0  38 A0 00 00 */	li r5, 0
/* 80A720C4  48 00 00 18 */	b lbl_80A720DC
lbl_80A720C8:
/* 80A720C8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A720CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A720D0  41 82 00 0C */	beq lbl_80A720DC
/* 80A720D4  38 80 00 00 */	li r4, 0
/* 80A720D8  38 A0 00 00 */	li r5, 0
lbl_80A720DC:
/* 80A720DC  38 00 00 79 */	li r0, 0x79
/* 80A720E0  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80A720E4  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80A720E8  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80A720EC  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80A720F0  60 00 00 04 */	ori r0, r0, 4
/* 80A720F4  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80A720F8  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A720FC  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80A72100  4B 7F D0 F9 */	bl SetH__8cM3dGCylFf
/* 80A72104  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A72108  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A7210C  4B 7F D0 F5 */	bl SetR__8cM3dGCylFf
/* 80A72110  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80A72114  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A72118  4B 7F D0 C5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A7211C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A72120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A72124  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A72128  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80A7212C  4B 7F 2A 7D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A72130:
/* 80A72130  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A72134  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A72138  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A7213C  7D 89 03 A6 */	mtctr r12
/* 80A72140  4E 80 04 21 */	bctrl 
/* 80A72144  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80A72148  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80A7214C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A72150  7D 89 03 A6 */	mtctr r12
/* 80A72154  4E 80 04 21 */	bctrl 
/* 80A72158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7215C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72160  7C 08 03 A6 */	mtlr r0
/* 80A72164  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72168  4E 80 00 20 */	blr 
