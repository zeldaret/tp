lbl_801206C4:
/* 801206C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801206C8  7C 08 02 A6 */	mflr r0
/* 801206CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801206D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801206D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801206D8  7C 6B 1B 78 */	mr r11, r3
/* 801206DC  7C 9E 23 78 */	mr r30, r4
/* 801206E0  7C AA 2B 78 */	mr r10, r5
/* 801206E4  7C C8 33 78 */	mr r8, r6
/* 801206E8  7C E9 3B 78 */	mr r9, r7
/* 801206EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801206F0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801206F4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 801206F8  38 00 00 FF */	li r0, 0xff
/* 801206FC  90 01 00 08 */	stw r0, 8(r1)
/* 80120700  38 80 00 00 */	li r4, 0
/* 80120704  90 81 00 0C */	stw r4, 0xc(r1)
/* 80120708  38 00 FF FF */	li r0, -1
/* 8012070C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80120710  90 81 00 14 */	stw r4, 0x14(r1)
/* 80120714  90 81 00 18 */	stw r4, 0x18(r1)
/* 80120718  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8012071C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80120720  38 A0 00 00 */	li r5, 0
/* 80120724  7D 46 53 78 */	mr r6, r10
/* 80120728  7D 07 43 78 */	mr r7, r8
/* 8012072C  39 0B 01 0C */	addi r8, r11, 0x10c
/* 80120730  39 40 00 00 */	li r10, 0
/* 80120734  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80120738  4B F2 CD 95 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8012073C  90 7E 00 00 */	stw r3, 0(r30)
/* 80120740  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80120744  38 63 02 10 */	addi r3, r3, 0x210
/* 80120748  80 9E 00 00 */	lwz r4, 0(r30)
/* 8012074C  4B F2 B1 69 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80120750  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80120754  38 63 02 10 */	addi r3, r3, 0x210
/* 80120758  80 9E 00 00 */	lwz r4, 0(r30)
/* 8012075C  4B F2 B1 BD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80120760  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80120764  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80120768  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012076C  7C 08 03 A6 */	mtlr r0
/* 80120770  38 21 00 30 */	addi r1, r1, 0x30
/* 80120774  4E 80 00 20 */	blr 
