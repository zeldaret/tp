lbl_80A26CC8:
/* 80A26CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26CCC  7C 08 02 A6 */	mflr r0
/* 80A26CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A26CD8  7C 7F 1B 78 */	mr r31, r3
/* 80A26CDC  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A26CE0  38 A4 A0 4C */	addi r5, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A26CE4  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80A26CE8  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80A26CEC  4B 72 D5 8D */	bl getDistTableIdx__8daNpcF_cFii
/* 80A26CF0  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A26CF4  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A26CF8  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A26CFC  7F E3 FB 78 */	mr r3, r31
/* 80A26D00  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A26D04  38 A4 A0 4C */	addi r5, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A26D08  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80A26D0C  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80A26D10  4B 72 D5 69 */	bl getDistTableIdx__8daNpcF_cFii
/* 80A26D14  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A26D18  38 00 00 0A */	li r0, 0xa
/* 80A26D1C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A26D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A26D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26D28  7C 08 03 A6 */	mtlr r0
/* 80A26D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26D30  4E 80 00 20 */	blr 
