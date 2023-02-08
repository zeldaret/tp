lbl_80A9DB0C:
/* 80A9DB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9DB10  7C 08 02 A6 */	mflr r0
/* 80A9DB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9DB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9DB1C  7C 7F 1B 78 */	mr r31, r3
/* 80A9DB20  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A9DB24  28 00 00 00 */	cmplwi r0, 0
/* 80A9DB28  40 82 00 B0 */	bne lbl_80A9DBD8
/* 80A9DB2C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80A9DB30  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80A9DB34  38 A0 00 1F */	li r5, 0x1f
/* 80A9DB38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9DB3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9DB40  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A9DB44  28 00 00 00 */	cmplwi r0, 0
/* 80A9DB48  41 82 00 10 */	beq lbl_80A9DB58
/* 80A9DB4C  38 80 00 00 */	li r4, 0
/* 80A9DB50  38 A0 00 00 */	li r5, 0
/* 80A9DB54  48 00 00 30 */	b lbl_80A9DB84
lbl_80A9DB58:
/* 80A9DB58  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80A9DB5C  28 00 00 00 */	cmplwi r0, 0
/* 80A9DB60  41 82 00 10 */	beq lbl_80A9DB70
/* 80A9DB64  38 80 00 00 */	li r4, 0
/* 80A9DB68  38 A0 00 00 */	li r5, 0
/* 80A9DB6C  48 00 00 18 */	b lbl_80A9DB84
lbl_80A9DB70:
/* 80A9DB70  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80A9DB74  2C 00 00 00 */	cmpwi r0, 0
/* 80A9DB78  41 82 00 0C */	beq lbl_80A9DB84
/* 80A9DB7C  38 80 00 00 */	li r4, 0
/* 80A9DB80  38 A0 00 00 */	li r5, 0
lbl_80A9DB84:
/* 80A9DB84  38 00 00 79 */	li r0, 0x79
/* 80A9DB88  90 1F 0E 78 */	stw r0, 0xe78(r31)
/* 80A9DB8C  90 9F 0E 74 */	stw r4, 0xe74(r31)
/* 80A9DB90  90 BF 0E 64 */	stw r5, 0xe64(r31)
/* 80A9DB94  80 1F 0E E8 */	lwz r0, 0xee8(r31)
/* 80A9DB98  60 00 00 04 */	ori r0, r0, 4
/* 80A9DB9C  90 1F 0E E8 */	stw r0, 0xee8(r31)
/* 80A9DBA0  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A9DBA4  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80A9DBA8  4B 7D 16 51 */	bl SetH__8cM3dGCylFf
/* 80A9DBAC  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A9DBB0  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80A9DBB4  4B 7D 16 4D */	bl SetR__8cM3dGCylFf
/* 80A9DBB8  38 7F 0F 70 */	addi r3, r31, 0xf70
/* 80A9DBBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A9DBC0  4B 7D 16 1D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A9DBC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9DBC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9DBCC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A9DBD0  38 9F 0E 4C */	addi r4, r31, 0xe4c
/* 80A9DBD4  4B 7C 6F D5 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80A9DBD8:
/* 80A9DBD8  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80A9DBDC  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80A9DBE0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80A9DBE4  7D 89 03 A6 */	mtctr r12
/* 80A9DBE8  4E 80 04 21 */	bctrl 
/* 80A9DBEC  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 80A9DBF0  81 9F 0E 88 */	lwz r12, 0xe88(r31)
/* 80A9DBF4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A9DBF8  7D 89 03 A6 */	mtctr r12
/* 80A9DBFC  4E 80 04 21 */	bctrl 
/* 80A9DC00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9DC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9DC08  7C 08 03 A6 */	mtlr r0
/* 80A9DC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9DC10  4E 80 00 20 */	blr 
