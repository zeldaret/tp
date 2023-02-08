lbl_804705DC:
/* 804705DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804705E0  7C 08 02 A6 */	mflr r0
/* 804705E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804705E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804705EC  7C 7F 1B 78 */	mr r31, r3
/* 804705F0  A0 03 0D 18 */	lhz r0, 0xd18(r3)
/* 804705F4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 804705F8  40 82 00 0C */	bne lbl_80470604
/* 804705FC  38 00 00 01 */	li r0, 1
/* 80470600  98 1F 0D B5 */	stb r0, 0xdb5(r31)
lbl_80470604:
/* 80470604  7F E3 FB 78 */	mr r3, r31
/* 80470608  48 00 2D E1 */	bl mode_init_wait__12daObjCarry_cFv
/* 8047060C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80470610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80470614  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80470618  3C 80 80 48 */	lis r4, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 8047061C  38 84 A4 BC */	addi r4, r4, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80470620  38 84 01 33 */	addi r4, r4, 0x133
/* 80470624  4B EF 83 71 */	bl strcmp
/* 80470628  2C 03 00 00 */	cmpwi r3, 0
/* 8047062C  40 82 00 0C */	bne lbl_80470638
/* 80470630  38 00 00 01 */	li r0, 1
/* 80470634  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_80470638:
/* 80470638  38 60 00 01 */	li r3, 1
/* 8047063C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470644  7C 08 03 A6 */	mtlr r0
/* 80470648  38 21 00 10 */	addi r1, r1, 0x10
/* 8047064C  4E 80 00 20 */	blr 
