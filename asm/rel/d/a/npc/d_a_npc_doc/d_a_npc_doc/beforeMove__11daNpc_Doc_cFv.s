lbl_809A7F3C:
/* 809A7F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A7F40  7C 08 02 A6 */	mflr r0
/* 809A7F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A7F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A7F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 809A7F50  7C 7F 1B 78 */	mr r31, r3
/* 809A7F54  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 809A7F58  28 00 00 00 */	cmplwi r0, 0
/* 809A7F5C  40 82 00 B0 */	bne lbl_809A800C
/* 809A7F60  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 809A7F64  28 00 00 00 */	cmplwi r0, 0
/* 809A7F68  40 82 00 A4 */	bne lbl_809A800C
/* 809A7F6C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809A7F70  28 00 00 00 */	cmplwi r0, 0
/* 809A7F74  41 82 00 0C */	beq lbl_809A7F80
/* 809A7F78  4B 7F 7B 7D */	bl dKy_getDarktime_hour__Fv
/* 809A7F7C  48 00 00 08 */	b lbl_809A7F84
lbl_809A7F80:
/* 809A7F80  4B 7F 7A 91 */	bl dKy_getdaytime_hour__Fv
lbl_809A7F84:
/* 809A7F84  38 00 00 00 */	li r0, 0
/* 809A7F88  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 809A7F8C  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 809A7F90  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 809A7F94  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 809A7F98  28 00 00 18 */	cmplwi r0, 0x18
/* 809A7F9C  38 00 FF FF */	li r0, -1
/* 809A7FA0  40 80 00 08 */	bge lbl_809A7FA8
/* 809A7FA4  54 A0 06 FE */	clrlwi r0, r5, 0x1b
lbl_809A7FA8:
/* 809A7FA8  2C 00 00 00 */	cmpwi r0, 0
/* 809A7FAC  41 80 00 20 */	blt lbl_809A7FCC
/* 809A7FB0  54 A0 06 FE */	clrlwi r0, r5, 0x1b
/* 809A7FB4  28 00 00 18 */	cmplwi r0, 0x18
/* 809A7FB8  38 80 FF FF */	li r4, -1
/* 809A7FBC  40 80 00 08 */	bge lbl_809A7FC4
/* 809A7FC0  7C 04 03 78 */	mr r4, r0
lbl_809A7FC4:
/* 809A7FC4  7C 03 20 00 */	cmpw r3, r4
/* 809A7FC8  41 80 00 3C */	blt lbl_809A8004
lbl_809A7FCC:
/* 809A7FCC  54 A4 DE FE */	rlwinm r4, r5, 0x1b, 0x1b, 0x1f
/* 809A7FD0  28 04 00 18 */	cmplwi r4, 0x18
/* 809A7FD4  38 00 FF FF */	li r0, -1
/* 809A7FD8  40 80 00 08 */	bge lbl_809A7FE0
/* 809A7FDC  7C 80 23 78 */	mr r0, r4
lbl_809A7FE0:
/* 809A7FE0  2C 00 00 00 */	cmpwi r0, 0
/* 809A7FE4  41 80 00 28 */	blt lbl_809A800C
/* 809A7FE8  54 A4 DE FE */	rlwinm r4, r5, 0x1b, 0x1b, 0x1f
/* 809A7FEC  28 04 00 18 */	cmplwi r4, 0x18
/* 809A7FF0  38 00 FF FF */	li r0, -1
/* 809A7FF4  40 80 00 08 */	bge lbl_809A7FFC
/* 809A7FF8  7C 80 23 78 */	mr r0, r4
lbl_809A7FFC:
/* 809A7FFC  7C 00 18 00 */	cmpw r0, r3
/* 809A8000  40 80 00 0C */	bge lbl_809A800C
lbl_809A8004:
/* 809A8004  38 00 00 01 */	li r0, 1
/* 809A8008  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_809A800C:
/* 809A800C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809A8010  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 809A8014  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 809A8018  3B C0 00 00 */	li r30, 0
/* 809A801C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 809A8020  28 00 00 00 */	cmplwi r0, 0
/* 809A8024  40 82 00 1C */	bne lbl_809A8040
/* 809A8028  4B 68 7A 2D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809A802C  2C 03 00 00 */	cmpwi r3, 0
/* 809A8030  40 82 00 14 */	bne lbl_809A8044
/* 809A8034  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809A8038  28 00 00 00 */	cmplwi r0, 0
/* 809A803C  41 82 00 08 */	beq lbl_809A8044
lbl_809A8040:
/* 809A8040  3B C0 00 01 */	li r30, 1
lbl_809A8044:
/* 809A8044  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 809A8048  41 82 00 10 */	beq lbl_809A8058
/* 809A804C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 809A8050  64 00 08 00 */	oris r0, r0, 0x800
/* 809A8054  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_809A8058:
/* 809A8058  3B C0 00 00 */	li r30, 0
/* 809A805C  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 809A8060  28 00 00 00 */	cmplwi r0, 0
/* 809A8064  40 82 00 1C */	bne lbl_809A8080
/* 809A8068  4B 68 79 ED */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809A806C  2C 03 00 00 */	cmpwi r3, 0
/* 809A8070  40 82 00 14 */	bne lbl_809A8084
/* 809A8074  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 809A8078  28 00 00 00 */	cmplwi r0, 0
/* 809A807C  41 82 00 08 */	beq lbl_809A8084
lbl_809A8080:
/* 809A8080  3B C0 00 01 */	li r30, 1
lbl_809A8084:
/* 809A8084  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 809A8088  40 82 00 10 */	bne lbl_809A8098
/* 809A808C  88 1F 0E 2B */	lbz r0, 0xe2b(r31)
/* 809A8090  28 00 00 00 */	cmplwi r0, 0
/* 809A8094  41 82 00 0C */	beq lbl_809A80A0
lbl_809A8098:
/* 809A8098  38 00 00 00 */	li r0, 0
/* 809A809C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809A80A0:
/* 809A80A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A80A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A80A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A80AC  7C 08 03 A6 */	mtlr r0
/* 809A80B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A80B4  4E 80 00 20 */	blr 
