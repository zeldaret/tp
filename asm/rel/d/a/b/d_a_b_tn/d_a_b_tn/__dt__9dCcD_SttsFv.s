lbl_8062D6FC:
/* 8062D6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D700  7C 08 02 A6 */	mflr r0
/* 8062D704  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D70C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D710  41 82 00 64 */	beq lbl_8062D774
/* 8062D714  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8062D718  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8062D71C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8062D720  38 03 00 20 */	addi r0, r3, 0x20
/* 8062D724  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8062D728  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8062D72C  41 82 00 24 */	beq lbl_8062D750
/* 8062D730  3C 60 80 63 */	lis r3, __vt__10dCcD_GStts@ha
/* 8062D734  38 03 EF 78 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8062D738  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8062D73C  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 8062D740  41 82 00 10 */	beq lbl_8062D750
/* 8062D744  3C 60 80 63 */	lis r3, __vt__10cCcD_GStts@ha
/* 8062D748  38 03 EF 6C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8062D74C  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8062D750:
/* 8062D750  28 1F 00 00 */	cmplwi r31, 0
/* 8062D754  41 82 00 10 */	beq lbl_8062D764
/* 8062D758  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8062D75C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8062D760  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8062D764:
/* 8062D764  7C 80 07 35 */	extsh. r0, r4
/* 8062D768  40 81 00 0C */	ble lbl_8062D774
/* 8062D76C  7F E3 FB 78 */	mr r3, r31
/* 8062D770  4B CA 15 CC */	b __dl__FPv
lbl_8062D774:
/* 8062D774  7F E3 FB 78 */	mr r3, r31
/* 8062D778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D780  7C 08 03 A6 */	mtlr r0
/* 8062D784  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D788  4E 80 00 20 */	blr 
