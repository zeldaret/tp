lbl_80039678:
/* 80039678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003967C  7C 08 02 A6 */	mflr r0
/* 80039680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039684  38 60 00 08 */	li r3, 8
/* 80039688  48 29 55 C5 */	bl __nw__FUl
/* 8003968C  28 03 00 00 */	cmplwi r3, 0
/* 80039690  41 82 00 30 */	beq lbl_800396C0
/* 80039694  3C 80 80 3C */	lis r4, __vt__Q26JStage7TObject@ha /* 0x803C47E8@ha */
/* 80039698  38 04 47 E8 */	addi r0, r4, __vt__Q26JStage7TObject@l /* 0x803C47E8@l */
/* 8003969C  90 03 00 00 */	stw r0, 0(r3)
/* 800396A0  3C 80 80 3C */	lis r4, __vt__Q26JStage7TSystem@ha /* 0x803C4828@ha */
/* 800396A4  38 04 48 28 */	addi r0, r4, __vt__Q26JStage7TSystem@l /* 0x803C4828@l */
/* 800396A8  90 03 00 00 */	stw r0, 0(r3)
/* 800396AC  3C 80 80 3A */	lis r4, __vt__14dDemo_system_c@ha /* 0x803A7944@ha */
/* 800396B0  38 04 79 44 */	addi r0, r4, __vt__14dDemo_system_c@l /* 0x803A7944@l */
/* 800396B4  90 03 00 00 */	stw r0, 0(r3)
/* 800396B8  38 00 00 00 */	li r0, 0
/* 800396BC  90 03 00 04 */	stw r0, 4(r3)
lbl_800396C0:
/* 800396C0  90 6D 88 80 */	stw r3, m_system__7dDemo_c(r13)
/* 800396C4  38 60 01 10 */	li r3, 0x110
/* 800396C8  48 29 55 85 */	bl __nw__FUl
/* 800396CC  7C 60 1B 79 */	or. r0, r3, r3
/* 800396D0  41 82 00 0C */	beq lbl_800396DC
/* 800396D4  48 24 BA 41 */	bl __ct__Q27JStudio8TControlFv
/* 800396D8  7C 60 1B 78 */	mr r0, r3
lbl_800396DC:
/* 800396DC  90 0D 88 84 */	stw r0, m_control__7dDemo_c(r13)
/* 800396E0  38 60 00 38 */	li r3, 0x38
/* 800396E4  48 29 55 69 */	bl __nw__FUl
/* 800396E8  7C 60 1B 79 */	or. r0, r3, r3
/* 800396EC  41 82 00 0C */	beq lbl_800396F8
/* 800396F0  48 1F 02 FD */	bl __ct__17jmessage_tControlFv
/* 800396F4  7C 60 1B 78 */	mr r0, r3
lbl_800396F8:
/* 800396F8  90 0D 88 9C */	stw r0, m_mesgControl__7dDemo_c(r13)
/* 800396FC  38 60 00 10 */	li r3, 0x10
/* 80039700  48 29 55 4D */	bl __nw__FUl
/* 80039704  28 03 00 00 */	cmplwi r3, 0
/* 80039708  41 82 00 30 */	beq lbl_80039738
/* 8003970C  80 AD 88 80 */	lwz r5, m_system__7dDemo_c(r13)
/* 80039710  3C 80 80 3A */	lis r4, __vt__Q27JStudio13TCreateObject@ha /* 0x803A7934@ha */
/* 80039714  38 04 79 34 */	addi r0, r4, __vt__Q27JStudio13TCreateObject@l /* 0x803A7934@l */
/* 80039718  90 03 00 00 */	stw r0, 0(r3)
/* 8003971C  38 00 00 00 */	li r0, 0
/* 80039720  90 03 00 04 */	stw r0, 4(r3)
/* 80039724  90 03 00 08 */	stw r0, 8(r3)
/* 80039728  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage13TCreateObject@ha /* 0x803C5720@ha */
/* 8003972C  38 04 57 20 */	addi r0, r4, __vt__Q214JStudio_JStage13TCreateObject@l /* 0x803C5720@l */
/* 80039730  90 03 00 00 */	stw r0, 0(r3)
/* 80039734  90 A3 00 0C */	stw r5, 0xc(r3)
lbl_80039738:
/* 80039738  90 6D 88 88 */	stw r3, m_stage__7dDemo_c(r13)
/* 8003973C  38 60 00 18 */	li r3, 0x18
/* 80039740  48 29 55 0D */	bl __nw__FUl
/* 80039744  28 03 00 00 */	cmplwi r3, 0
/* 80039748  41 82 00 3C */	beq lbl_80039784
/* 8003974C  80 ED 85 F4 */	lwz r7, data_80450B74(r13)
/* 80039750  80 CD 88 80 */	lwz r6, m_system__7dDemo_c(r13)
/* 80039754  3C 80 80 3A */	lis r4, __vt__Q27JStudio13TCreateObject@ha /* 0x803A7934@ha */
/* 80039758  38 04 79 34 */	addi r0, r4, __vt__Q27JStudio13TCreateObject@l /* 0x803A7934@l */
/* 8003975C  90 03 00 00 */	stw r0, 0(r3)
/* 80039760  38 A0 00 00 */	li r5, 0
/* 80039764  90 A3 00 04 */	stw r5, 4(r3)
/* 80039768  90 A3 00 08 */	stw r5, 8(r3)
/* 8003976C  3C 80 80 3C */	lis r4, __vt__Q215JStudio_JAudio213TCreateObject@ha /* 0x803C5A68@ha */
/* 80039770  38 04 5A 68 */	addi r0, r4, __vt__Q215JStudio_JAudio213TCreateObject@l /* 0x803C5A68@l */
/* 80039774  90 03 00 00 */	stw r0, 0(r3)
/* 80039778  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8003977C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80039780  98 A3 00 14 */	stb r5, 0x14(r3)
lbl_80039784:
/* 80039784  90 6D 88 8C */	stw r3, m_audio__7dDemo_c(r13)
/* 80039788  38 00 00 01 */	li r0, 1
/* 8003978C  98 03 00 14 */	stb r0, 0x14(r3)
/* 80039790  38 60 00 18 */	li r3, 0x18
/* 80039794  48 29 54 B9 */	bl __nw__FUl
/* 80039798  28 03 00 00 */	cmplwi r3, 0
/* 8003979C  41 82 00 48 */	beq lbl_800397E4
/* 800397A0  80 CD 89 20 */	lwz r6, mEmitterMng__13dPa_control_c(r13)
/* 800397A4  80 ED 88 80 */	lwz r7, m_system__7dDemo_c(r13)
/* 800397A8  3C 80 80 3A */	lis r4, __vt__Q27JStudio13TCreateObject@ha /* 0x803A7934@ha */
/* 800397AC  38 04 79 34 */	addi r0, r4, __vt__Q27JStudio13TCreateObject@l /* 0x803A7934@l */
/* 800397B0  90 03 00 00 */	stw r0, 0(r3)
/* 800397B4  38 A0 00 00 */	li r5, 0
/* 800397B8  90 A3 00 04 */	stw r5, 4(r3)
/* 800397BC  90 A3 00 08 */	stw r5, 8(r3)
/* 800397C0  3C 80 80 3C */	lis r4, __vt__Q217JStudio_JParticle13TCreateObject@ha /* 0x803C5AD8@ha */
/* 800397C4  38 04 5A D8 */	addi r0, r4, __vt__Q217JStudio_JParticle13TCreateObject@l /* 0x803C5AD8@l */
/* 800397C8  90 03 00 00 */	stw r0, 0(r3)
/* 800397CC  90 C3 00 0C */	stw r6, 0xc(r3)
/* 800397D0  90 E3 00 10 */	stw r7, 0x10(r3)
/* 800397D4  98 A3 00 14 */	stb r5, 0x14(r3)
/* 800397D8  3C 80 80 3A */	lis r4, __vt__16dDemo_particle_c@ha /* 0x803A7910@ha */
/* 800397DC  38 04 79 10 */	addi r0, r4, __vt__16dDemo_particle_c@l /* 0x803A7910@l */
/* 800397E0  90 03 00 00 */	stw r0, 0(r3)
lbl_800397E4:
/* 800397E4  90 6D 88 90 */	stw r3, m_particle__7dDemo_c(r13)
/* 800397E8  38 60 00 0C */	li r3, 0xc
/* 800397EC  48 29 54 61 */	bl __nw__FUl
/* 800397F0  28 03 00 00 */	cmplwi r3, 0
/* 800397F4  41 82 00 28 */	beq lbl_8003981C
/* 800397F8  3C 80 80 3A */	lis r4, __vt__Q27JStudio13TCreateObject@ha /* 0x803A7934@ha */
/* 800397FC  38 04 79 34 */	addi r0, r4, __vt__Q27JStudio13TCreateObject@l /* 0x803A7934@l */
/* 80039800  90 03 00 00 */	stw r0, 0(r3)
/* 80039804  38 00 00 00 */	li r0, 0
/* 80039808  90 03 00 04 */	stw r0, 4(r3)
/* 8003980C  90 03 00 08 */	stw r0, 8(r3)
/* 80039810  3C 80 80 3A */	lis r4, data_803A7BE4@ha /* 0x803A7BE4@ha */
/* 80039814  38 04 7B E4 */	addi r0, r4, data_803A7BE4@l /* 0x803A7BE4@l */
/* 80039818  90 03 00 00 */	stw r0, 0(r3)
lbl_8003981C:
/* 8003981C  90 6D 88 94 */	stw r3, m_message__7dDemo_c(r13)
/* 80039820  38 60 00 18 */	li r3, 0x18
/* 80039824  48 29 54 29 */	bl __nw__FUl
/* 80039828  28 03 00 00 */	cmplwi r3, 0
/* 8003982C  41 82 00 50 */	beq lbl_8003987C
/* 80039830  3C 80 80 3C */	lis r4, __vt__Q37JStudio3stb8TFactory@ha /* 0x803C56C0@ha */
/* 80039834  38 04 56 C0 */	addi r0, r4, __vt__Q37JStudio3stb8TFactory@l /* 0x803C56C0@l */
/* 80039838  90 03 00 00 */	stw r0, 0(r3)
/* 8003983C  3C 80 80 3C */	lis r4, __vt__Q27JStudio8TFactory@ha /* 0x803C4AE0@ha */
/* 80039840  38 04 4A E0 */	addi r0, r4, __vt__Q27JStudio8TFactory@l /* 0x803C4AE0@l */
/* 80039844  90 03 00 00 */	stw r0, 0(r3)
/* 80039848  38 00 00 00 */	li r0, 0
/* 8003984C  90 03 00 08 */	stw r0, 8(r3)
/* 80039850  90 03 00 0C */	stw r0, 0xc(r3)
/* 80039854  90 03 00 04 */	stw r0, 4(r3)
/* 80039858  38 03 00 08 */	addi r0, r3, 8
/* 8003985C  90 03 00 08 */	stw r0, 8(r3)
/* 80039860  90 03 00 0C */	stw r0, 0xc(r3)
/* 80039864  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb8TFactory@ha /* 0x803C4A30@ha */
/* 80039868  38 04 4A 30 */	addi r0, r4, __vt__Q37JStudio3fvb8TFactory@l /* 0x803C4A30@l */
/* 8003986C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80039870  3C 80 80 3C */	lis r4, __vt__Q37JStudio3ctb8TFactory@ha /* 0x803C48A0@ha */
/* 80039874  38 04 48 A0 */	addi r0, r4, __vt__Q37JStudio3ctb8TFactory@l /* 0x803C48A0@l */
/* 80039878  90 03 00 14 */	stw r0, 0x14(r3)
lbl_8003987C:
/* 8003987C  90 6D 88 98 */	stw r3, m_factory__7dDemo_c(r13)
/* 80039880  38 60 00 B0 */	li r3, 0xb0
/* 80039884  48 29 53 C9 */	bl __nw__FUl
/* 80039888  7C 60 1B 79 */	or. r0, r3, r3
/* 8003988C  41 82 00 0C */	beq lbl_80039898
/* 80039890  4B FF F6 C5 */	bl __ct__14dDemo_object_cFv
/* 80039894  7C 60 1B 78 */	mr r0, r3
lbl_80039898:
/* 80039898  90 0D 88 A0 */	stw r0, m_object__7dDemo_c(r13)
/* 8003989C  C8 02 83 E0 */	lfd f0, lit_5123(r2)
/* 800398A0  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 800398A4  D8 03 00 58 */	stfd f0, 0x58(r3)
/* 800398A8  80 6D 88 84 */	lwz r3, m_control__7dDemo_c(r13)
/* 800398AC  80 8D 88 98 */	lwz r4, m_factory__7dDemo_c(r13)
/* 800398B0  48 24 B9 79 */	bl setFactory__Q27JStudio8TControlFPQ27JStudio8TFactory
/* 800398B4  80 6D 88 98 */	lwz r3, m_factory__7dDemo_c(r13)
/* 800398B8  80 8D 88 88 */	lwz r4, m_stage__7dDemo_c(r13)
/* 800398BC  48 24 BC A5 */	bl appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject
/* 800398C0  80 6D 88 98 */	lwz r3, m_factory__7dDemo_c(r13)
/* 800398C4  80 8D 88 8C */	lwz r4, m_audio__7dDemo_c(r13)
/* 800398C8  48 24 BC 99 */	bl appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject
/* 800398CC  80 6D 88 98 */	lwz r3, m_factory__7dDemo_c(r13)
/* 800398D0  80 8D 88 90 */	lwz r4, m_particle__7dDemo_c(r13)
/* 800398D4  48 24 BC 8D */	bl appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject
/* 800398D8  80 6D 88 98 */	lwz r3, m_factory__7dDemo_c(r13)
/* 800398DC  80 8D 88 94 */	lwz r4, m_message__7dDemo_c(r13)
/* 800398E0  48 24 BC 81 */	bl appendCreateObject__Q27JStudio8TFactoryFPQ27JStudio13TCreateObject
/* 800398E4  80 0D 88 A0 */	lwz r0, m_object__7dDemo_c(r13)
/* 800398E8  80 6D 88 80 */	lwz r3, m_system__7dDemo_c(r13)
/* 800398EC  90 03 00 04 */	stw r0, 4(r3)
/* 800398F0  38 00 00 00 */	li r0, 0
/* 800398F4  90 0D 88 A4 */	stw r0, m_data__7dDemo_c(r13)
/* 800398F8  90 0D 88 B8 */	stw r0, m_mode__7dDemo_c(r13)
/* 800398FC  48 00 06 09 */	bl reset__7dDemo_cFv
/* 80039900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039904  7C 08 03 A6 */	mtlr r0
/* 80039908  38 21 00 10 */	addi r1, r1, 0x10
/* 8003990C  4E 80 00 20 */	blr 
