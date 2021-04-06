lbl_80CEAF10:
/* 80CEAF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEAF14  7C 08 02 A6 */	mflr r0
/* 80CEAF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEAF1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEAF20  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEAF24  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CEAF28  7C 9F 23 78 */	mr r31, r4
/* 80CEAF2C  41 82 00 40 */	beq lbl_80CEAF6C
/* 80CEAF30  3C 80 80 CF */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80CECD74@ha */
/* 80CEAF34  38 84 CD 74 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80CECD74@l */
/* 80CEAF38  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CEAF3C  38 04 00 0C */	addi r0, r4, 0xc
/* 80CEAF40  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80CEAF44  38 04 00 18 */	addi r0, r4, 0x18
/* 80CEAF48  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80CEAF4C  38 04 00 24 */	addi r0, r4, 0x24
/* 80CEAF50  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80CEAF54  38 80 00 00 */	li r4, 0
/* 80CEAF58  4B 38 C6 99 */	bl __dt__11dBgS_GndChkFv
/* 80CEAF5C  7F E0 07 35 */	extsh. r0, r31
/* 80CEAF60  40 81 00 0C */	ble lbl_80CEAF6C
/* 80CEAF64  7F C3 F3 78 */	mr r3, r30
/* 80CEAF68  4B 5E 3D D5 */	bl __dl__FPv
lbl_80CEAF6C:
/* 80CEAF6C  7F C3 F3 78 */	mr r3, r30
/* 80CEAF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEAF74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEAF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEAF7C  7C 08 03 A6 */	mtlr r0
/* 80CEAF80  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEAF84  4E 80 00 20 */	blr 
