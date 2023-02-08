lbl_80A261CC:
/* 80A261CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A261D0  7C 08 02 A6 */	mflr r0
/* 80A261D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A261D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A261DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A261E0  7C 7F 1B 78 */	mr r31, r3
/* 80A261E4  48 00 39 B1 */	bl __ct__8daNpcF_cFv
/* 80A261E8  3C 60 80 A3 */	lis r3, __vt__15daNpcKasiMich_c@ha /* 0x80A2A6A4@ha */
/* 80A261EC  38 03 A6 A4 */	addi r0, r3, __vt__15daNpcKasiMich_c@l /* 0x80A2A6A4@l */
/* 80A261F0  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A261F4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80A261F8  4B 89 AA 19 */	bl __ct__17Z2CreatureCitizenFv
/* 80A261FC  3B DF 0B F0 */	addi r30, r31, 0xbf0
/* 80A26200  3C 60 80 A3 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A2A77C@ha */
/* 80A26204  38 03 A7 7C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A2A77C@l */
/* 80A26208  90 1F 0C 88 */	stw r0, 0xc88(r31)
/* 80A2620C  7F C3 F3 78 */	mr r3, r30
/* 80A26210  3C 80 80 A3 */	lis r4, __ct__4cXyzFv@ha /* 0x80A29944@ha */
/* 80A26214  38 84 99 44 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A29944@l */
/* 80A26218  3C A0 80 A3 */	lis r5, __dt__4cXyzFv@ha /* 0x80A29908@ha */
/* 80A2621C  38 A5 99 08 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A29908@l */
/* 80A26220  38 C0 00 0C */	li r6, 0xc
/* 80A26224  38 E0 00 04 */	li r7, 4
/* 80A26228  4B 93 BB 39 */	bl __construct_array
/* 80A2622C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80A26230  3C 80 80 A3 */	lis r4, __ct__5csXyzFv@ha /* 0x80A29904@ha */
/* 80A26234  38 84 99 04 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A29904@l */
/* 80A26238  3C A0 80 A3 */	lis r5, __dt__5csXyzFv@ha /* 0x80A298C8@ha */
/* 80A2623C  38 A5 98 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A298C8@l */
/* 80A26240  38 C0 00 06 */	li r6, 6
/* 80A26244  38 E0 00 04 */	li r7, 4
/* 80A26248  4B 93 BB 19 */	bl __construct_array
/* 80A2624C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80A26250  3C 80 80 A3 */	lis r4, __ct__5csXyzFv@ha /* 0x80A29904@ha */
/* 80A26254  38 84 99 04 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A29904@l */
/* 80A26258  3C A0 80 A3 */	lis r5, __dt__5csXyzFv@ha /* 0x80A298C8@ha */
/* 80A2625C  38 A5 98 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A298C8@l */
/* 80A26260  38 C0 00 06 */	li r6, 6
/* 80A26264  38 E0 00 04 */	li r7, 4
/* 80A26268  4B 93 BA F9 */	bl __construct_array
/* 80A2626C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80A26270  3C 80 80 A3 */	lis r4, __ct__5csXyzFv@ha /* 0x80A29904@ha */
/* 80A26274  38 84 99 04 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A29904@l */
/* 80A26278  3C A0 80 A3 */	lis r5, __dt__5csXyzFv@ha /* 0x80A298C8@ha */
/* 80A2627C  38 A5 98 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A298C8@l */
/* 80A26280  38 C0 00 06 */	li r6, 6
/* 80A26284  38 E0 00 04 */	li r7, 4
/* 80A26288  4B 93 BA D9 */	bl __construct_array
/* 80A2628C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80A26290  3C 80 80 A3 */	lis r4, __ct__5csXyzFv@ha /* 0x80A29904@ha */
/* 80A26294  38 84 99 04 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A29904@l */
/* 80A26298  3C A0 80 A3 */	lis r5, __dt__5csXyzFv@ha /* 0x80A298C8@ha */
/* 80A2629C  38 A5 98 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A298C8@l */
/* 80A262A0  38 C0 00 06 */	li r6, 6
/* 80A262A4  38 E0 00 04 */	li r7, 4
/* 80A262A8  4B 93 BA B9 */	bl __construct_array
/* 80A262AC  7F C3 F3 78 */	mr r3, r30
/* 80A262B0  4B 72 AD 89 */	bl initialize__15daNpcF_Lookat_cFv
/* 80A262B4  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80A262B8  3C 80 80 A3 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80A297BC@ha */
/* 80A262BC  38 84 97 BC */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80A297BC@l */
/* 80A262C0  3C A0 80 A3 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A29774@ha */
/* 80A262C4  38 A5 97 74 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A29774@l */
/* 80A262C8  38 C0 00 08 */	li r6, 8
/* 80A262CC  38 E0 00 01 */	li r7, 1
/* 80A262D0  4B 93 BA 91 */	bl __construct_array
/* 80A262D4  3B DF 0C 94 */	addi r30, r31, 0xc94
/* 80A262D8  3C 60 80 A3 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80A2A770@ha */
/* 80A262DC  38 03 A7 70 */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80A2A770@l */
/* 80A262E0  90 1F 12 C0 */	stw r0, 0x12c0(r31)
/* 80A262E4  3C 60 80 A3 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80A2A764@ha */
/* 80A262E8  38 03 A7 64 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80A2A764@l */
/* 80A262EC  90 1F 12 BC */	stw r0, 0x12bc(r31)
/* 80A262F0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80A262F4  38 80 00 00 */	li r4, 0
/* 80A262F8  38 A0 00 00 */	li r5, 0
/* 80A262FC  4B 72 A5 75 */	bl initialize__16daNpcF_SPCurve_cFP5dPathi
/* 80A26300  7F C3 F3 78 */	mr r3, r30
/* 80A26304  4B 72 A5 FD */	bl initialize__13daNpcF_Path_cFv
/* 80A26308  3B DF 12 C8 */	addi r30, r31, 0x12c8
/* 80A2630C  7F C3 F3 78 */	mr r3, r30
/* 80A26310  4B 65 D7 19 */	bl __ct__12dCcD_GObjInfFv
/* 80A26314  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A26318  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A2631C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A26320  3C 60 80 A3 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A2A758@ha */
/* 80A26324  38 03 A7 58 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A2A758@l */
/* 80A26328  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80A2632C  3C 60 80 A3 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A2A74C@ha */
/* 80A26330  38 03 A7 4C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A2A74C@l */
/* 80A26334  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A26338  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A2633C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A26340  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80A26344  38 03 00 58 */	addi r0, r3, 0x58
/* 80A26348  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A2634C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A26350  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A26354  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80A26358  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A2635C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80A26360  38 03 00 84 */	addi r0, r3, 0x84
/* 80A26364  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80A26368  7F E3 FB 78 */	mr r3, r31
/* 80A2636C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A26370  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A26374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26378  7C 08 03 A6 */	mtlr r0
/* 80A2637C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26380  4E 80 00 20 */	blr 
