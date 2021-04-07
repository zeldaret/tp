lbl_8098084C:
/* 8098084C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80980850  7C 08 02 A6 */	mflr r0
/* 80980854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80980858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098085C  93 C1 00 08 */	stw r30, 8(r1)
/* 80980860  7C 7F 1B 78 */	mr r31, r3
/* 80980864  48 00 58 11 */	bl __ct__8daNpcF_cFv
/* 80980868  3C 60 80 99 */	lis r3, __vt__11daNpcChat_c@ha /* 0x8098B99C@ha */
/* 8098086C  38 03 B9 9C */	addi r0, r3, __vt__11daNpcChat_c@l /* 0x8098B99C@l */
/* 80980870  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80980874  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80980878  4B 94 03 99 */	bl __ct__17Z2CreatureCitizenFv
/* 8098087C  3B DF 0B F4 */	addi r30, r31, 0xbf4
/* 80980880  3C 60 80 99 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8098BA5C@ha */
/* 80980884  38 03 BA 5C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8098BA5C@l */
/* 80980888  90 1F 0C 8C */	stw r0, 0xc8c(r31)
/* 8098088C  7F C3 F3 78 */	mr r3, r30
/* 80980890  3C 80 80 98 */	lis r4, __ct__4cXyzFv@ha /* 0x80985E24@ha */
/* 80980894  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80985E24@l */
/* 80980898  3C A0 80 98 */	lis r5, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 8098089C  38 A5 5D E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809808A0  38 C0 00 0C */	li r6, 0xc
/* 809808A4  38 E0 00 04 */	li r7, 4
/* 809808A8  4B 9E 14 B9 */	bl __construct_array
/* 809808AC  38 7E 00 34 */	addi r3, r30, 0x34
/* 809808B0  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 809808B4  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 809808B8  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 809808BC  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 809808C0  38 C0 00 06 */	li r6, 6
/* 809808C4  38 E0 00 04 */	li r7, 4
/* 809808C8  4B 9E 14 99 */	bl __construct_array
/* 809808CC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809808D0  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 809808D4  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 809808D8  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 809808DC  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 809808E0  38 C0 00 06 */	li r6, 6
/* 809808E4  38 E0 00 04 */	li r7, 4
/* 809808E8  4B 9E 14 79 */	bl __construct_array
/* 809808EC  38 7E 00 64 */	addi r3, r30, 0x64
/* 809808F0  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 809808F4  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 809808F8  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 809808FC  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980900  38 C0 00 06 */	li r6, 6
/* 80980904  38 E0 00 04 */	li r7, 4
/* 80980908  4B 9E 14 59 */	bl __construct_array
/* 8098090C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80980910  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 80980914  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 80980918  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 8098091C  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80980920  38 C0 00 06 */	li r6, 6
/* 80980924  38 E0 00 04 */	li r7, 4
/* 80980928  4B 9E 14 39 */	bl __construct_array
/* 8098092C  7F C3 F3 78 */	mr r3, r30
/* 80980930  4B 7D 07 09 */	bl initialize__15daNpcF_Lookat_cFv
/* 80980934  38 7F 0C 90 */	addi r3, r31, 0xc90
/* 80980938  3C 80 80 98 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80985C9C@ha */
/* 8098093C  38 84 5C 9C */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80985C9C@l */
/* 80980940  3C A0 80 98 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80985C54@ha */
/* 80980944  38 A5 5C 54 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80985C54@l */
/* 80980948  38 C0 00 08 */	li r6, 8
/* 8098094C  38 E0 00 01 */	li r7, 1
/* 80980950  4B 9E 14 11 */	bl __construct_array
/* 80980954  3B DF 0C 9C */	addi r30, r31, 0xc9c
/* 80980958  7F C3 F3 78 */	mr r3, r30
/* 8098095C  4B 70 30 CD */	bl __ct__12dCcD_GObjInfFv
/* 80980960  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80980964  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80980968  90 1E 01 20 */	stw r0, 0x120(r30)
/* 8098096C  3C 60 80 99 */	lis r3, __vt__8cM3dGAab@ha /* 0x8098BA50@ha */
/* 80980970  38 03 BA 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8098BA50@l */
/* 80980974  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80980978  3C 60 80 99 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8098BA44@ha */
/* 8098097C  38 03 BA 44 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8098BA44@l */
/* 80980980  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80980984  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80980988  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8098098C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80980990  38 03 00 58 */	addi r0, r3, 0x58
/* 80980994  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80980998  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8098099C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809809A0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809809A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809809A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809809AC  38 03 00 84 */	addi r0, r3, 0x84
/* 809809B0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809809B4  7F E3 FB 78 */	mr r3, r31
/* 809809B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809809BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809809C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809809C4  7C 08 03 A6 */	mtlr r0
/* 809809C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809809CC  4E 80 00 20 */	blr 
