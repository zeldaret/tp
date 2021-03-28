lbl_801090EC:
/* 801090EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801090F0  7C 08 02 A6 */	mflr r0
/* 801090F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801090F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801090FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80109100  7C 7E 1B 78 */	mr r30, r3
/* 80109104  7C 9F 23 78 */	mr r31, r4
/* 80109108  4B FF F9 11 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010910C  2C 03 00 00 */	cmpwi r3, 0
/* 80109110  41 82 00 44 */	beq lbl_80109154
/* 80109114  2C 1F 00 00 */	cmpwi r31, 0
/* 80109118  41 82 00 1C */	beq lbl_80109134
/* 8010911C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80109120  D0 1E 20 54 */	stfs f0, 0x2054(r30)
/* 80109124  D0 1E 20 58 */	stfs f0, 0x2058(r30)
/* 80109128  80 7E 1F 54 */	lwz r3, 0x1f54(r30)
/* 8010912C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80109130  48 00 00 1C */	b lbl_8010914C
lbl_80109134:
/* 80109134  7F C3 F3 78 */	mr r3, r30
/* 80109138  38 9E 20 48 */	addi r4, r30, 0x2048
/* 8010913C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha
/* 80109140  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l
/* 80109144  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80109148  4B FF 8B AD */	bl setWaterInAnmRate__9daAlink_cFP16daPy_frameCtrl_cf
lbl_8010914C:
/* 8010914C  38 60 00 01 */	li r3, 1
/* 80109150  48 00 00 08 */	b lbl_80109158
lbl_80109154:
/* 80109154  38 60 00 00 */	li r3, 0
lbl_80109158:
/* 80109158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010915C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80109160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80109164  7C 08 03 A6 */	mtlr r0
/* 80109168  38 21 00 10 */	addi r1, r1, 0x10
/* 8010916C  4E 80 00 20 */	blr 
